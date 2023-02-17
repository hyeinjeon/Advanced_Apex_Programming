/**
 * @description       : 
 *                      
 * @author            : hyein.jeon@daeunextier.com
 * @group             :
 * @last modified on  : 2023-02-17
 * @last modified by  : hyein.jeon@daeunextier.com
 * Modifications Log
 * Ver     Date             Author               Modification
 * 1.0   2023-02-17   hyein.jeon@daeunextier.com   Initial Version
 */

public with sharing class Part2  extends TriggerHandler {

    public Part2() {
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

    public override void beforeUpdate() {
        part2_5();
    }

    public void part2_5() {

        /* Part 2 - Application Architecture and Patterns */

        /* 5 - Fun With Collections */

        // Using Maps to Obtain Sets

        List<Contact> cts = new List<Contact>();

        /** Normal */
        Set<Id> contactIds = new Set<Id>();
        for (Contact ct : cts) {
            contactIds.add(ct.id);
        }

        /** Better */
        Map<Id, Contact> mapContact = new Map<Id, Contact>(cts);
        List<Task> tasks2 = [
                SELECT Id
                FROM Task
                WHERE Whoid in :mapContact.keySet()
                LIMIT 500
        ];
        /**  이러한 방식으로 맵을 사용하는 것은 약간 비효율적인 메모리 사용이지만(실제로 맵 자체가 필
            요하지 않다고 가정할 때) 루프를 사용하여 세트를 채우는 것보다 훨씬 더 효율적입니다(일반적으
            로 5배 빠른 것보다 빠름).
        */

    }

}