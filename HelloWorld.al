// Welcome to your new AL extension.
// Remember that object names and IDs should be unique across all extensions.
// AL snippets start with t*, like tpageext - give them a try and happy coding!

pageextension 50100 CustomerListExt extends "Customer List"
{
    Editable = true;

    layout
    {
        addfirst(Content)
        {
            group(MyGroup)
            {
                Caption = 'Options';

                field(HeaderField; txtHeader)
                {
                    Caption = 'Header Text';
                    ApplicationArea = All;
                    Visible = isVisible;
                }
            }

        }
        addlast(Control1)
        {
            field(Name222; Name)
            {
                Caption = 'My Name';
                ApplicationArea = All;
                ToolTip = 'This field is for that';
            }

            field(minuväljanimi; Round(8.99191, 0.01))
            {
                Caption = 'This is a number';
                ApplicationArea = All;
                ToolTip = 'yyy';
            }
        }
    }

    actions
    {
        addafter("C&ontact")
        {
            action(MYActionName)
            {
                Caption = 'My Action';
                Image = Return;
                Promoted = true;
                PromotedIsBig = true;

                trigger OnAction()
                begin
                    Message('Do something');
                end;
            }
        }
    }


    trigger OnOpenPage();
    begin
        Message('App published: Hello world');
    end;

    trigger OnAfterGetRecord()
    begin

    end;

    procedure Myproc()
    begin

    end;

    var
        txtHeader: Text;
        [InDataSet]
        isVisible: Boolean;
}