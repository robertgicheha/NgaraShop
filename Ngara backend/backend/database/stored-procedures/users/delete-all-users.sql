CREATE PROCEDURE usp_DeleteAllUsers
AS
BEGIN
  SET NOCOUNT ON;

  DELETE FROM users;
  DBCC CHECKIDENT('users', RESEED, 0);
END

