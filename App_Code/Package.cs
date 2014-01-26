﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Package
/// </summary>
public class Package
{
    // private data
        private int packageId;
        private string pkgName;
        private DateTime pkgStartDate;
        private DateTime pkgEndDate;
        private string pkgDesc;
        private decimal pkgBasePrice;
    
    // public properties to access to variable
    public int PackageId
    {
        get { return packageId; }
        set { packageId = value; }
    }
    public string PkgName
    {
        get { return pkgName; }
        set { pkgName = value; }
    }
    public DateTime PkgStartDate
    {
        get { return pkgStartDate; }
        set { pkgStartDate = value; }
    }
    public DateTime PkgEndDate
    {
        get { return pkgEndDate; }
        set { pkgEndDate = value; }
    }
    public string PkgDesc
    {
        get { return pkgDesc; }
        set { pkgDesc = value; }
    }
    public decimal PkgBasePrice
    {
        get { return pkgBasePrice; }
        set { pkgBasePrice = value; }
    }
      
    // constructor
    public Package()
    {
        //packageId = 0;
    }

    //public Package(int newPkgId, string newPkgName)
    //{
    //    packageId = newPkgId;
    //    pkgName = newPkgName;
    //}

    public Package(int newPkgId, string newPkgName, DateTime newPkgStartDate, DateTime newPkgEndDate, string newPkgDesc, decimal newPkgBasePrice)
    {
        packageId = newPkgId;
        pkgName = newPkgName;
        pkgStartDate = newPkgStartDate;
        pkgEndDate = newPkgEndDate;
        pkgDesc = newPkgDesc;
        pkgBasePrice = newPkgBasePrice;
    }
}