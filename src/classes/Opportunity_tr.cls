/**
 * @description       : 
 *                      
 * @author            : hyein.jeon@daeunextier.com
 * @group             :
 * @last modified on  : 2023-02-08
 * @last modified by  : hyein.jeon@daeunextier.com
 * Modifications Log
 * Ver     Date             Author               Modification
 * 1.0   2023-02-08   hyein.jeon@daeunextier.com   Initial Version
 */

public with sharing class Opportunity_tr extends TriggerHandler {

    public Opportunity_tr() {
        listNew = (List<Opportunity>) Trigger.new;
        mapOld = (Map<Id, Opportunity>) Trigger.oldMap;
        mapNew = (Map<Id, Opportunity>) Trigger.newMap;
        listOld = (List<Opportunity>) Trigger.old;
    }
    /** TriggerHandler */
    private List<Opportunity> listNew { get; set; }
    private List<Opportunity> listOld { get; set; }
    private Map<Id, Opportunity> mapOld { get; set; }
    private Map<Id, Opportunity> mapNew { get; set; }

    public override void beforeInsert() {
    }
    public override void beforeUpdate() {
        optyContactRole();
    }
    public override void beforeDelete() {
    }
    public override void afterInsert() {
    }
    public override void afterUpdate() {
    }
    public override void afterDelete() {
    }

    public void optyContactRole() {
        List<OpportunityContactRole> listOptyContactRole = new List<OpportunityContactRole>([

        ]);

        for(Opportunity opp : listNew) {
            if(opp.StageName.equals('Id. Decision Makers')) {

            }
        }
    }








}