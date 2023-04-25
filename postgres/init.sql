\c voxpbx

CREATE TABLE cdr ( 
        calldate timestamp with time zone NOT NULL default now(),
        clid varchar (80) NOT NULL default '',
        src varchar (80) NOT NULL default '',
        dst varchar (80) NOT NULL default '',
        dcontext varchar (80) NOT NULL default '',
        channel varchar (80) NOT NULL default '',
        dstchannel varchar (80) NOT NULL default '',
        lastapp varchar (80) NOT NULL default '',
        lastdata varchar (80) NOT NULL default '',
        duration int NOT NULL default '0',
        billsec int NOT NULL default '0',
        disposition varchar (45) NOT NULL , 
        amaflags int NOT NULL default '0',
        accountcode varchar (20) NOT NULL default '',
        uniqueid varchar (150) NOT NULL default '', 
        userfield varchar (255) NOT NULL default '',
        peeraccount varchar(20) NOT NULL default '',
        linkedid varchar(150) NOT NULL default '',
        sequence int NOT NULL
);