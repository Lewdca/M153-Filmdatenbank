create trigger DeleteMovie on Filmtitel for delete 
as begin
    if @@rowcount = 0 
    begin
        print 'Es sind keine Zeilen betroffen'
    end
    else
    begin
    print 'Sie haben Zeilen gelöscht';
    end
end
go