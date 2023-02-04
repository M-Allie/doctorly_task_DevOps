If you have multiple Ubuntu prod instances, How would you monitor them? What would be your monitoring strategy?

        The absolute first issue is understanding what you want to monitor, why the information is important and most importantly what should be done with the info. 
            
            Is only OS metrics needed?
            Is application metrics needed?
            Do logs need to me monitored or exported?
        
        Next a mechanism to alert those who need to know and/or take action based on criteria. Ideally your monitoring will be linked to automation that will resolve know issues.
    
        What monitoring to use depends on if the servers will be on-prem or remote or cloud. In this case I assume they are hosted by AWS based on the term "instances" being used. For AWS I would make use of Cloudwatch and have the cloudwatch agent installed. Making use of the cloudwatch agent allows you to monitor more than just what is visible to the AWS hypervisor. This includes low level OS metrics and various logs files.

        If the monitoring targets do vary, a third party solution like https://www.zabbix.com/ whould be my choise. This will allow for a single interface for monitoring. For log export and analysis, an ELK stack could be used: https://www.elastic.co/what-is/elk-stack

        Additionally external or service level monitor is needed. An example of this would a system that check http response codes and service response times.

        I would also set up a backup logging method, like running ATOP and saving the files to an NFS server or S3 bucket. 

        Also read: https://www.oreilly.com/library/view/devops-troubleshooting-linux/9780133035513/