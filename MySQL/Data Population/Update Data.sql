-- Trigger:

# If in Customer table, MembershipStartDate is NULL, the new default value is the current date. MembershipEndDate is 1 year ahead of the current date.

DELIMITER $$

CREATE TRIGGER set_membership_dates
BEFORE INSERT ON Customer
FOR EACH ROW
BEGIN
    -- If MembershipStartDate is NULL, set it to the current date
    IF NEW.MembershipStartDate IS NULL THEN
        SET NEW.MembershipStartDate = CURDATE();
    END IF;

    -- Set MembershipEndDate to one year from MembershipStartDate
    SET NEW.MembershipEndDate = DATE_ADD(NEW.MembershipStartDate, INTERVAL 1 YEAR);
END $$

DELIMITER ;

commit;
