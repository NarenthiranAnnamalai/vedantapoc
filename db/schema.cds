namespace TestVedanta;

using
{
    Country,
    Currency,
    Language,
    User,
    cuid,
    extensible,
    managed,
    temporal
}
from '@sap/cds/common';

entity EmployeeMaster : managed
{
    key EmpID : String;
    EmpName : String(100);
    Email : String(100);
    ReportingManager : String(100);
    HOD : String(100);
    sBU_Unit : Association to one SBU_Unit;
    department : String(100);
}

entity IdeaTable : managed
{
    key IdeaNo : Integer;
    IdeaDesc : String(100);
    Source : String(100);
    Category : String(100);
    Rank : String;
    AddInfo : String(100);
    Status : String(100);
    submittedBy : String(100);
    ReviewedBy : String(100);
    business : String(100);
    sbuunit : String(100);
    department : String(100);
    date : Date;
    hopperassociation : String(100);
    approvalremarks : String(100);
    hopperscore : String(100);
    referrelcomments : String(100);
}

entity hopperMaster : managed
{
    key qno : Integer;
    qdesc : String(100);
    weightage : String(100);
    criteria1 : String(100);
    criteria3 : String(100);
    criteria5 : String(100);
    criteria7 : String(100);
    criteria9 : String(100);
}

entity SBU_Unit
{
    key name : String;
    value : String(100);
}

entity Department
{
    key name : String;
    value : String(100);
}

entity idea_Source
{
    key name : String;
    value : String(100);
}

entity idea_Rank
{
    key name : String;
    value : String(100);
}

entity referring_Category
{
    key name : String;
    value : String(100);
}

entity idea_Status
{
    key name : String;
    value : String(100);
}

entity idea_Category
{
    key name : String;
    value : String(100);
}

entity Hopper_Rating
{
    key name : String;
    value : String(100);
}

entity Hopper_Type
{
    key name : String;
    key value : String(100);
}

entity Idea_Header : managed
{
    key idea_No : String;
    business : String(100);
    employeeId : String(100);
    reporingManagerId : String(100);
    HOD_EmployeeId : String(100);
}

entity idea_Item : managed
{
    key ideaNo : String;
    ideaLine : String(100) not null;
    idea_Desc : String(100);
    idea_Source : String(100);
    category : String(100);
    idea_Rank : String(100);
    add_Info : String(100);
}

entity ideaStatus : managed
{
    key ideaNo : String;
    ideaLine : String(100) not null;
    ideaStatus : String(100) not null;
    idea_Approved_or_Rejected : String(100);
    idea_Approver : String(100);
    idea_Approved_On : String(100);
    idea_Approved_At : String(100);
}

entity Hopper : managed
{
    key hopper_Id : String;
    hopper_Desc : String(100);
    hopper_Weightage : String(100);
    rating_Desc : String(100);
    hopper_Rating_name : String(100);
}

entity business
{
    key name : String;
    value : String(100);
}
