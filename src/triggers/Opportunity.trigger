/**
 * @description       :
 * @author            : youngmin.kim@daeunextier.com
 * @group             :
 * @last modified on  : 2022-02-27
 * @last modified by  : admin@vatech.com.dev
**/

trigger Opportunity on Opportunity (before insert, before update, before delete, after insert, after update, after delete, after undelete) {
    new Opportunity_tr().run();
}