# ##############################################################################
# Script      : ATP_GESBPC_OBPC
# Date        : 07/26/23 15:32:46
# Author      : Administrateur système (ADMIN)
# Comment     : Customers (Customer)
# Version     : 3.0.01
# ##############################################################################

# #############################################################################
@SageX3AutomatedTestPlatform
Feature: FEATURE ATP_GESBPC_OBPC
    # #############################################################################

    # #############################################################################
    Scenario: Main
        # #############################################################################

        # Main
        Given the user is logged into Sage X3 with "param:loginType" using user name "param:loginUserName" and password "param:loginPassword"
        When the user selects the "param:endPointName1" entry on endpoint panel
        Then the "param:endPointName1" endpoint is selected


    # #############################################################################
    Scenario: Modification Object Customers
        # #############################################################################

        Given the user opens the "GESBPC" function
        Then the "Customer" screen is displayed

        # Field : Customer (Screen : BPC0 / BPCNUM) (Data type : BPN Alphanumeric None ) (Options : C) ()
        Given the user selects the text field with name: "Customer"
        When the user writes "DE004" to the selected text field


        # Field : Customer Field (Screen : BPC0 / ZBPCFLD) (Data type : A Alphanumeric None ) (Options : ) ()
        Given the user selects the text field with name: "Customer Field"
        Then the value of the selected text field is "130"


    # #############################################################################
    Scenario: Close page Customers (Customer)
        # #############################################################################

        Then the user clicks the Close page action icon on the header panel

    # #############################################################################
    Scenario: Linked
        # #############################################################################

        # Linked
        And the user logs-out from the system

