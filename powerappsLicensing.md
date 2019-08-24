# Understanding PowerApps Licensing

- **Created:** Thu Jan 10 21:15:11 PST 2019
- **Last Updated:** Fri Aug 23 19:08:48 PST 2019

## Introduction

- PowerPlatform licensing (like most licensing models) is tough to keep track of. The below items are not comprehensive, but rather for general reference only. Refer to Microsoft docs for latest licensing info.

## Three Types of PowerApps

- [Canvas Apps](https://docs.microsoft.com/en-us/powerapps/maker/canvas-apps/getting-started)
  - Start from:
    - A blank "canvas" or
    - A template app or
    - A data source
- [Model-driven Apps](https://docs.microsoft.com/en-us/powerapps/maker/model-driven-apps/model-driven-app-overview)
  - Start from:
    - A Business Process Map (of sorts) in Dynamics
    - [Common Data Service](https://docs.microsoft.com/en-us/powerapps/maker/common-data-service/data-platform-intro)
    - A different data source
- [PowerApps Portal](https://powerapps.microsoft.com/en-us/blog/introducing-powerapps-portals-powerful-low-code-websites-for-external-users/)
    - Webpage-like, external user-facing "PowerApp". At this point, its difficult to call this a true PowerApp offering.

## PowerApps Licenses

- [PowerApps Community Plan](https://docs.microsoft.com/en-us/powerapps/maker/dev-community-plan)
  - Free
  - Used primarily for learning and building skills
  - Caveat: Cannot share apps with anyone
  
- [PowerApps Plan 2 Free Trial](https://docs.microsoft.com/en-us/powerapps/maker/signup-for-powerapps#upgrade-an-existing-license)
  - Free
  - Benefits: Gives you access to all premium features listed above
  - CAREFUL!: When your trial expires, your apps are deleted
  
- [PowerApps with Office 365](https://docs.microsoft.com/en-us/powerapps/administrator/pricing-billing-skus#licenses)
  - Varies in price
  - Anyone with an appropriate O365 license can create and/or use PowerApps
  - Freely develop PowerApps as long as you stay **within the O365 "Ecosystem"**
  - CAREFUL!: Its easy to get "auto-provisioned" into a premium license
    - If a user within your tenant accidentally clicks on "Model Driven App" when creating a new PowerApp, a Common Data Service (CDS) database will be auto-provisioned
      - This will cause all security for that given Environment to be transferred to Dynamics365
    - If a user within your tenant accidentally creates a Flow With Approvals a CDS database will be auto-provisioned and all security for the given Environment will be transferred to Dynamics365
  - My personal setup:
    - [Office 365 Business Premium](https://go.microsoft.com/fwlink/p/?LinkID=510935&culture=en-US&country=US) 
    - $12.50/user/month paid annually
    - Comes with Teams, Sharepoint, OneDrive, Flow, etc.
    
- PowerApps with Premium Features
  - $10/APP/USER/MONTH or
  - $40/USER/MONTH
  - Premium features: 
    - Custom Connectors
    - Premium Connectors
    - On-premise Data Gateway
    - Flow premium w/ many runs/month
    - Model and create data entities in Common Data Service
    - Access to Preview Environment to try out the latest enhancements
    
- [PowerApps with Dynamics 365](https://docs.microsoft.com/en-us/powerapps/administrator/pricing-billing-skus#licenses)
  - Unknown price

## PowerApps Administration

- [Admin Docs](https://docs.microsoft.com/en-us/powerapps/administrator/admin-guide)
- [Enterprise Deployment Whitepaper](https://powerapps.microsoft.com/en-us/blog/powerapps-enterprise-deployment-whitepaper/)
- [Feb 2019 Licensing Change Extension](https://techcommunity.microsoft.com/t5/Office-Retirement-Blog/UPDATED-Updates-to-Microsoft-Flow-and-PowerApps-for-Office-365/ba-p/289589)
- [Oct 2019 Licensing Changes]()
