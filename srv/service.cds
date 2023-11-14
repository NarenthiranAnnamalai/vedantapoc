using { TestVedanta as my } from '../db/schema';

@path : '/service/TestVedanta'
service TestVedantaService
{
   
    entity EmployeeMaster as
        projection on my.EmployeeMaster;

    entity IdeaTable as
        projection on my.IdeaTable;

    entity hopperMaster as
        projection on my.hopperMaster;

    entity SBU_Unit as
        projection on my.SBU_Unit;

    entity Department as
        projection on my.Department;

    entity idea_Category as
        projection on my.idea_Category;

    entity idea_Rank as
        projection on my.idea_Rank;

    entity idea_Source as
        projection on my.idea_Source;

    entity idea_Status as
        projection on my.idea_Status;

    entity referring_Category as
        projection on my.referring_Category;

    entity Idea_Header as
        projection on my.Idea_Header;

    entity idea_Item as
        projection on my.idea_Item;

    entity ideaStatus as
        projection on my.ideaStatus;

    entity Hopper as
        projection on my.Hopper;

    entity business as
        projection on my.business;

    entity Hopper_Rating as
        projection on my.Hopper_Rating;

    entity Hopper_Type as
        projection on my.Hopper_Type;
}

annotate TestVedantaService with @requires :
[
    'any'
];
