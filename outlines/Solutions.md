---
Title: Working With Solutions in PowerApps Canvas Apps
Author: Eric Thomas
Organization: PowerApps.Rocks!
Created Time and Date: Wed Jan 29 16:41:07 PST 2020
Last Updated: 
Categories: PowerApps Development
Tags: mtx 2020, powerapps, power automate, administration, devops
Contact: info@powerapps.rocks
---

# Working With Solutions in PowerApps Canvas Apps

## Introduction

Solutions allow you to implement custom functionality into your PowerApps. Only recently, this feature was extended to include Canvas apps. These instructions will guide you through how to import a solution into your environment and enable their use for Canvas apps.

## Pre-requisites

- [Suitable privileges](https://docs.microsoft.com/en-us/power-platform/admin/create-environment-powerapps) to create a PowerApps environment
- A PowerApps per-user, per-app, trial or community Plan
- Common Data Service (CDS) instance AND capacity
  - CDS will *soon* come with every new environment (depends on your **current** licensing)
	- Each CDS instance requires 1GB of capacity
	- Each paid PowerApps Plan comes with some CDS capacity
	    - See [page 15](https://go.microsoft.com/fwlink/?LinkId=2085130&clcid=0x409) of the `2020 PowerApps and Power Automate Licensing Guide`
			- ![](./2020-01-29-17-49-01.png)
- A PowerApps Component Framework (PCF) Solution to import!
  - See [`pcf.gallery`](https://pcf.gallery/canvas-controls) for some examples

## Instructions

1. **Create a new PowerApps environment and CDS instance**
  - Go to `admin.powerapps.com`
	- Click `New Environment`
	- Name the environment
	- Select `Trial` or `Production` (**Careful!**: `Trial` auto-expires after 30 days)
	- ![](./2020-01-29-17-23-01.png)
	- Click `Create Database`
	  - This will create a CDS instance for the new environment
		- Solutions are stored in CDS
		- ![](./2020-01-29-17-26-02.png)
		- Select `Currency`, `Language` and whether to load sample data
		  - If you're low on CDS capacity, uncheck this
			- Note TOS here
			- ![](./2020-01-29-17-29-45.png)
		- Click `Create Database`
    - **Note**: This can also be done in an automated fashion using the [Power Automate PowerPlatform for Admins](https://docs.microsoft.com/en-us/connectors/powerplatformforadmins/) actions or the [PowerApps PowerShell cmdlets](https://powerapps.microsoft.com/en-us/blog/gdpr-admin-powershell-cmdlets/)

2. **Enable PCF Components for Canvas apps**
  - **Critical**: You must do this ***before*** performing step 3!
	- Go to `admin.powerplatform.microsoft.com`
	- Click the `Environments` tab on the left
	- Click the three dots next to the new environment then `Settings`
	- ![](./2020-01-29-18-23-52.png)
	- Expand `Products` then click `Features`
	- ![](./2020-01-29-18-24-31.png)
	- Toggle `On`, `Power Apps component framework for canvas apps`
	- Click `Save`
	- ![](./2020-01-29-18-25-48.png)
	- Close the browser tab


3. **Import the solution into the environment**
  - Open a new browser tab and go to `make.powerapps.com`
	- **Important**: Select the new environment in the top right corner
	- Click `Solutions`
	    - **Note**: The environment will show some default solutions installed *even if* you unchecked `Include sample data` when creating the CDS instance
			- ![](./2020-01-29-18-10-09.png)
	- Click `Import`
	- From the popup, click `Browse` and select the solution `.zip` file
	- ![](./2020-01-29-18-13-41.png)
	- Click `Next` then `Import`
	- A progress popup will appear. When complete a success popup will appear.
	- ![](./2020-01-29-18-15-18.png)
	- **Interesting Note**: If you have an *existing* version of the solution installed in the current environment, the *new* version **will not** install.
	- Click `Publish all customizations` then `Close`.
	- ![](./2020-01-29-18-18-52.png)
	- The component is now available to **all apps** within the environment!

4. **Import custom component into a PowerApp canvas app**
  - From `make.powerapps.com`, click the `Apps` tab on the left
	- Click `+ New app` then select `Canvas`
	- ![](./2020-01-29-18-40-11.png)
	- Under `Blank app` select `Tablet layout`
	- ![](./2020-01-29-18-43-59.png)
	- When the new canvas loads, click `File`, `Settings` then `Advanced settings`
	- Toggle `On`, `Components` under the `Experimental features` section
	- ![](./2020-01-29-18-45-32.png)
	- Click the back arrow
	- Back on the PowerApps canvas, click `Insert`, `Custom` then `Import component`
	- ![](./2020-01-29-18-46-45.png)
	- Once the flyout loads, click the `Code` tab near the top, select the component then click `Import`
	- ![](./2020-01-29-18-48-02.png)
	- On the left, click the `+`, then expand `Code components` and select the component
	- Initialize your component as applicable
	- Click `File`, `Save` then `Publish` to make your app available to others within your org
	- Click `Close` to fully close out the app
	- Re-open the app. Notice the message displayed. Its important to have a process around ensuring safe PCF components
	- ![](./2020-01-29-18-52-33.png)

## Further Reading

- [Intro to solutions](https://docs.microsoft.com/en-us/powerapps/developer/common-data-service/introduction-solutions)
- [PCF Components for Canvas Apps](https://docs.microsoft.com/en-us/powerapps/maker/canvas-apps/create-component)