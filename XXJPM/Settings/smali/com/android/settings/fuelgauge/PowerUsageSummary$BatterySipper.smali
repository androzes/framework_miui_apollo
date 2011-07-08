.class Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;
.super Ljava/lang/Object;
.source "PowerUsageSummary.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/PowerUsageSummary;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "BatterySipper"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;",
        ">;"
    }
.end annotation


# instance fields
.field cpuFgTime:J

.field cpuTime:J

.field defaultPackageName:Ljava/lang/String;

.field drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

.field gpsTime:J

.field icon:Landroid/graphics/drawable/Drawable;

.field iconId:I

.field name:Ljava/lang/String;

.field noCoveragePercent:D

.field percent:D

.field final synthetic this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

.field uidObj:Landroid/os/BatteryStats$Uid;

.field usageTime:J

.field value:D

.field values:[D


# direct methods
.method constructor <init>(Lcom/android/settings/fuelgauge/PowerUsageSummary;Ljava/lang/String;Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;ILandroid/os/BatteryStats$Uid;[D)V
    .locals 2
    .parameter
    .parameter "label"
    .parameter "drainType"
    .parameter "iconId"
    .parameter "uid"
    .parameter "values"

    .prologue
    .line 588
    iput-object p1, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 589
    iput-object p6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->values:[D

    .line 590
    iput-object p2, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 591
    iput-object p3, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->drainType:Lcom/android/settings/fuelgauge/PowerUsageDetail$DrainType;

    .line 592
    if-lez p4, :cond_0

    .line 593
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 595
    :cond_0
    if-eqz p6, :cond_1

    const/4 v0, 0x0

    aget-wide v0, p6, v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->value:D

    .line 596
    :cond_1
    if-eqz p2, :cond_2

    if-nez p4, :cond_3

    :cond_2
    if-eqz p5, :cond_3

    .line 597
    invoke-virtual {p0, p5}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V

    .line 599
    :cond_3
    iput-object p5, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    .line 600
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;)I
    .locals 4
    .parameter "other"

    .prologue
    .line 616
    invoke-virtual {p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v0

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->getSortValue()D

    move-result-wide v2

    sub-double/2addr v0, v2

    double-to-int v0, v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 572
    check-cast p1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;

    .end local p1
    invoke-virtual {p0, p1}, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->compareTo(Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;)I

    move-result v0

    return v0
.end method

.method getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 611
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getNameIcon()V
    .locals 25

    .prologue
    .line 656
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v17

    .line 657
    .local v17, pm:Landroid/content/pm/PackageManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v19

    .line 658
    .local v19, uid:I
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    .line 659
    .local v7, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    move-object/from16 v0, v17

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v14

    .line 660
    .local v14, packages:[Ljava/lang/String;
    if-nez v14, :cond_0

    .line 661
    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 719
    :goto_0
    return-void

    .line 665
    :cond_0
    move-object v0, v14

    array-length v0, v0

    move/from16 v22, v0

    move/from16 v0, v22

    new-array v0, v0, [Ljava/lang/String;

    move-object v13, v0

    .line 666
    .local v13, packageLabels:[Ljava/lang/String;
    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object v0, v14

    array-length v0, v0

    move/from16 v24, v0

    move-object v0, v14

    move/from16 v1, v22

    move-object v2, v13

    move/from16 v3, v23

    move/from16 v4, v24

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 668
    const/16 v18, -0x1

    .line 670
    .local v18, preferredIndex:I
    const/4 v8, 0x0

    .local v8, i:I
    :goto_1
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    move v0, v8

    move/from16 v1, v22

    if-ge v0, v1, :cond_3

    .line 672
    aget-object v22, v13, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-eqz v22, :cond_1

    move/from16 v18, v8

    .line 674
    :cond_1
    :try_start_0
    aget-object v22, v13, v8

    const/16 v23, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v22

    move/from16 v2, v23

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 675
    .local v5, ai:Landroid/content/pm/ApplicationInfo;
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    .line 676
    .local v10, label:Ljava/lang/CharSequence;
    if-eqz v10, :cond_2

    .line 677
    invoke-virtual {v10}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v13, v8

    .line 679
    :cond_2
    move-object v0, v5

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_6

    .line 680
    aget-object v22, v14, v8

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 681
    move-object v0, v5

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 687
    .end local v5           #ai:Landroid/content/pm/ApplicationInfo;
    .end local v10           #label:Ljava/lang/CharSequence;
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    if-nez v22, :cond_4

    move-object v0, v7

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 689
    :cond_4
    move-object v0, v13

    array-length v0, v0

    move/from16 v22, v0

    const/16 v23, 0x1

    move/from16 v0, v22

    move/from16 v1, v23

    if-ne v0, v1, :cond_7

    .line 690
    const/16 v22, 0x0

    aget-object v22, v13, v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 712
    :cond_5
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->uidObj:Landroid/os/BatteryStats$Uid;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v22

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    .line 713
    .local v20, uidString:Ljava/lang/String;
    new-instance v21, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;

    invoke-direct/range {v21 .. v21}, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;-><init>()V

    .line 714
    .local v21, utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->name:Ljava/lang/String;

    .line 715
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    .line 716
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->packageName:Ljava/lang/String;

    .line 717
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v22, v0

    invoke-static/range {v22 .. v22}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 718
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v22, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/settings/fuelgauge/PowerUsageSummary;->mHandler:Landroid/os/Handler;

    move-object/from16 v23, v0

    const/16 v24, 0x1

    invoke-virtual/range {v23 .. v25}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    .line 684
    .end local v20           #uidString:Ljava/lang/String;
    .end local v21           #utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    :catch_0
    move-exception v22

    .line 670
    :cond_6
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_1

    .line 693
    :cond_7
    move-object v6, v14

    .local v6, arr$:[Ljava/lang/String;
    array-length v11, v6

    .local v11, len$:I
    const/4 v9, 0x0

    .local v9, i$:I
    :goto_3
    if-ge v9, v11, :cond_5

    aget-object v16, v6, v9

    .line 695
    .local v16, pkgName:Ljava/lang/String;
    const/16 v22, 0x0

    :try_start_1
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v22

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v15

    .line 696
    .local v15, pi:Landroid/content/pm/PackageInfo;
    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 697
    move-object v0, v15

    iget v0, v0, Landroid/content/pm/PackageInfo;->sharedUserLabel:I

    move/from16 v22, v0

    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v23, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move/from16 v2, v22

    move-object/from16 v3, v23

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/pm/PackageManager;->getText(Ljava/lang/String;ILandroid/content/pm/ApplicationInfo;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 699
    .local v12, nm:Ljava/lang/CharSequence;
    if-eqz v12, :cond_8

    .line 700
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 701
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->icon:I

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 702
    move-object/from16 v0, v16

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 703
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto/16 :goto_2

    .line 708
    .end local v12           #nm:Ljava/lang/CharSequence;
    .end local v15           #pi:Landroid/content/pm/PackageInfo;
    :catch_1
    move-exception v22

    .line 693
    :cond_8
    add-int/lit8 v9, v9, 0x1

    goto :goto_3
.end method

.method getQuickNameIconForUid(Landroid/os/BatteryStats$Uid;)V
    .locals 8
    .parameter "uidObj"

    .prologue
    .line 620
    invoke-virtual {p1}, Landroid/os/BatteryStats$Uid;->getUid()I

    move-result v3

    .line 621
    .local v3, uid:I
    invoke-static {v3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v4

    .line 622
    .local v4, uidString:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 623
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$000(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/HashMap;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;

    .line 624
    .local v5, utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    iget-object v6, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->packageName:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->defaultPackageName:Ljava/lang/String;

    .line 625
    iget-object v6, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->name:Ljava/lang/String;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 626
    iget-object v6, v5, Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 649
    .end local v5           #utd:Lcom/android/settings/fuelgauge/PowerUsageSummary$UidToDetail;
    :goto_0
    return-void

    .line 629
    :cond_0
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 630
    .local v2, pm:Landroid/content/pm/PackageManager;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 631
    .local v0, defaultActivityIcon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v2, v3}, Landroid/content/pm/PackageManager;->getPackagesForUid(I)[Ljava/lang/String;

    move-result-object v1

    .line 632
    .local v1, packages:[Ljava/lang/String;
    invoke-virtual {v2}, Landroid/content/pm/PackageManager;->getDefaultActivityIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    .line 633
    if-nez v1, :cond_3

    .line 635
    if-nez v3, :cond_2

    .line 636
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f09036f

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    .line 640
    :cond_1
    :goto_1
    const v6, 0x7f02003b

    iput v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->iconId:I

    .line 641
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->iconId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->icon:Landroid/graphics/drawable/Drawable;

    goto :goto_0

    .line 637
    :cond_2
    const-string v6, "mediaserver"

    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 638
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-virtual {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090370

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->name:Ljava/lang/String;

    goto :goto_1

    .line 646
    :cond_3
    iget-object v6, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v6}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/ArrayList;

    move-result-object v6

    monitor-enter v6

    .line 647
    :try_start_0
    iget-object v7, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->this$0:Lcom/android/settings/fuelgauge/PowerUsageSummary;

    invoke-static {v7}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->access$100(Lcom/android/settings/fuelgauge/PowerUsageSummary;)Ljava/util/ArrayList;

    move-result-object v7

    invoke-virtual {v7, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 648
    monitor-exit v6

    goto :goto_0

    :catchall_0
    move-exception v7

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v7
.end method

.method getSortValue()D
    .locals 2

    .prologue
    .line 603
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->value:D

    return-wide v0
.end method

.method getValues()[D
    .locals 1

    .prologue
    .line 607
    iget-object v0, p0, Lcom/android/settings/fuelgauge/PowerUsageSummary$BatterySipper;->values:[D

    return-object v0
.end method
