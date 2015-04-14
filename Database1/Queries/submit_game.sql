INSERT INTO dbo.GAME
        ( title ,
          release_date ,
          genres ,
          price ,
          ESRB ,
          description ,
          data ,
          admin_username ,
          dev_username
        )
VALUES  ( '' , -- title - varchar(50)
          GETDATE() , -- release_date - date
          '' , -- genres - varchar(50)
          NULL , -- price - money
          '' , -- ESRB - varchar(50)
          '' , -- description - varchar(max)
          '' , -- data - varchar(50)
          '' , -- admin_username - varchar(50)
          ''  -- dev_username - varchar(50)
        )