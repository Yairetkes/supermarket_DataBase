
create function trigf1() returns trigger as
$$
declare
    unit  float = (select units
                   from stock s
                   where new.code = s.code
                     and new.bid = s.bid);
    price float = (select uprice
                   from product p
                   where new.code = p.code);

begin
    if (new.units <= unit)
    then
        begin
            update stock s1
            set units = unit - new.units
            where s1.code = new.code
              and new.bid = s1.bid;
            update receipt r
            set total = total + (new.units * price)
            where r.bid = new.bid;
            return new;
        end;
    else
        raise notice 'error! we do not have enough units in the stock';
        return null;
    end if;
end;
$$
LANGUAGE plpgsql;


create trigger T1
    before insert
    on Purchase
    for each row
execute procedure trigf1();


