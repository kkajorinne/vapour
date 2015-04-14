INSERT INTO dbo.DLC
        ( game_title ,
          game_release_date ,
          title ,
          release_date ,
          genres ,
          price ,
          ESRB ,
          description ,
          data ,
          admin_username ,
          dev_username
        )
VALUES  ( '' , -- game_title - varchar(50)
          GETDATE() , -- game_release_date - date
          '' , -- title - varchar(50)
          GETDATE() , -- release_date - date
          '' , -- genres - varchar(50)
          NULL , -- price - money
          '' , -- ESRB - varchar(50)
          '' , -- description - varchar(max)
          '' , -- data - varchar(50)
          '' , -- admin_username - varchar(50)
          ''  -- dev_username - varchar(50)
        )