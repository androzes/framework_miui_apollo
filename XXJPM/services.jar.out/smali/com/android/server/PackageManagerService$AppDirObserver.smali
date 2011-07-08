.class final Lcom/android/server/PackageManagerService$AppDirObserver;
.super Landroid/os/FileObserver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "AppDirObserver"
.end annotation


# instance fields
.field private final mIsRom:Z

.field private final mRootDir:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/server/PackageManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/PackageManagerService;Ljava/lang/String;IZ)V
    .locals 0
    .parameter
    .parameter "path"
    .parameter "mask"
    .parameter "isrom"

    .prologue
    .line 4649
    iput-object p1, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    .line 4650
    invoke-direct {p0, p2, p3}, Landroid/os/FileObserver;-><init>(Ljava/lang/String;I)V

    .line 4651
    iput-object p2, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    .line 4652
    iput-boolean p4, p0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    .line 4653
    return-void
.end method


# virtual methods
.method public onEvent(ILjava/lang/String;)V
    .locals 17
    .parameter "event"
    .parameter "path"

    .prologue
    .line 4656
    const/4 v15, 0x0

    .line 4657
    .local v15, removedPackage:Ljava/lang/String;
    const/16 v16, -0x1

    .line 4658
    .local v16, removedUid:I
    const/4 v9, 0x0

    .line 4659
    .local v9, addedPackage:Ljava/lang/String;
    const/4 v10, -0x1

    .line 4661
    .local v10, addedUid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v11, v3, Lcom/android/server/PackageManagerService;->mInstallLock:Ljava/lang/Object;

    monitor-enter v11

    .line 4662
    const/4 v14, 0x0

    .line 4663
    .local v14, fullPathStr:Ljava/lang/String;
    const/4 v12, 0x0

    .line 4664
    .local v12, fullPath:Ljava/io/File;
    if-eqz p2, :cond_0

    .line 4665
    :try_start_0
    new-instance v13, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mRootDir:Ljava/lang/String;

    move-object v3, v0

    move-object v0, v13

    move-object v1, v3

    move-object/from16 v2, p2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4666
    .end local v12           #fullPath:Ljava/io/File;
    .local v13, fullPath:Ljava/io/File;
    :try_start_1
    invoke-virtual {v13}, Ljava/io/File;->getPath()Ljava/lang/String;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    move-result-object v14

    move-object v12, v13

    .line 4673
    .end local v13           #fullPath:Ljava/io/File;
    .restart local v12       #fullPath:Ljava/io/File;
    :cond_0
    :try_start_2
    invoke-static/range {p2 .. p2}, Lcom/android/server/PackageManagerService;->access$1700(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 4676
    monitor-exit v11

    .line 4733
    :cond_1
    :goto_0
    return-void

    .line 4681
    :cond_2
    invoke-static {v14}, Lcom/android/server/PackageManagerService;->access$1800(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 4682
    monitor-exit v11

    goto :goto_0

    .line 4718
    :catchall_0
    move-exception v3

    :goto_1
    monitor-exit v11
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 4684
    :cond_3
    const/4 v5, 0x0

    .line 4685
    .local v5, p:Landroid/content/pm/PackageParser$Package;
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4686
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mAppDirs:Ljava/util/HashMap;

    invoke-virtual {v4, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    move-object v0, v6

    check-cast v0, Landroid/content/pm/PackageParser$Package;

    move-object v5, v0

    .line 4687
    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 4688
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x248

    move v3, v0

    if-eqz v3, :cond_4

    .line 4689
    if-eqz v5, :cond_4

    .line 4690
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v5, v4}, Lcom/android/server/PackageManagerService;->removePackageLI(Landroid/content/pm/PackageParser$Package;Z)V

    .line 4691
    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4692
    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object v0, v3

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    move/from16 v16, v0

    .line 4696
    :cond_4
    move/from16 v0, p1

    and-int/lit16 v0, v0, 0x88

    move v3, v0

    if-eqz v3, :cond_5

    .line 4697
    if-nez v5, :cond_5

    .line 4698
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->mIsRom:Z

    move v4, v0

    if-eqz v4, :cond_7

    const/16 v4, 0x41

    :goto_2
    or-int/lit8 v4, v4, 0x2

    or-int/lit8 v4, v4, 0x4

    const/16 v5, 0x21

    invoke-static {v3, v12, v4, v5}, Lcom/android/server/PackageManagerService;->access$1900(Lcom/android/server/PackageManagerService;Ljava/io/File;II)Landroid/content/pm/PackageParser$Package;

    .end local v5           #p:Landroid/content/pm/PackageParser$Package;
    move-result-object v5

    .line 4704
    .restart local v5       #p:Landroid/content/pm/PackageParser$Package;
    if-eqz v5, :cond_5

    .line 4705
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v13, v3, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v13
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 4706
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v4, v5, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    iget-object v6, v5, Landroid/content/pm/PackageParser$Package;->permissions:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_8

    const/4 v6, 0x1

    :goto_3
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Lcom/android/server/PackageManagerService;->access$2000(Lcom/android/server/PackageManagerService;Ljava/lang/String;Landroid/content/pm/PackageParser$Package;ZZZ)V

    .line 4708
    monitor-exit v13
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 4709
    :try_start_7
    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v9, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4710
    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 4715
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v3, v0

    iget-object v3, v3, Lcom/android/server/PackageManagerService;->mPackages:Ljava/util/HashMap;

    monitor-enter v3
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 4716
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/PackageManagerService$AppDirObserver;->this$0:Lcom/android/server/PackageManagerService;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/server/PackageManagerService;->mSettings:Lcom/android/server/PackageManagerService$Settings;

    invoke-virtual {v4}, Lcom/android/server/PackageManagerService$Settings;->writeLP()V

    .line 4717
    monitor-exit v3
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 4718
    :try_start_9
    monitor-exit v11
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    .line 4720
    if-eqz v15, :cond_6

    .line 4721
    new-instance v11, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 4722
    .local v11, extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    move-object v0, v11

    move-object v1, v3

    move/from16 v2, v16

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4723
    const-string v3, "android.intent.extra.DATA_REMOVED"

    const/4 v4, 0x0

    invoke-virtual {v11, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 4724
    const-string v3, "android.intent.action.PACKAGE_REMOVED"

    const/4 v4, 0x0

    invoke-static {v3, v15, v11, v4}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    .line 4727
    .end local v11           #extras:Landroid/os/Bundle;
    :cond_6
    if-eqz v9, :cond_1

    .line 4728
    new-instance v11, Landroid/os/Bundle;

    const/4 v3, 0x1

    invoke-direct {v11, v3}, Landroid/os/Bundle;-><init>(I)V

    .line 4729
    .restart local v11       #extras:Landroid/os/Bundle;
    const-string v3, "android.intent.extra.UID"

    invoke-virtual {v11, v3, v10}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 4730
    const-string v3, "android.intent.action.PACKAGE_ADDED"

    const/4 v4, 0x0

    invoke-static {v3, v9, v11, v4}, Lcom/android/server/PackageManagerService;->access$600(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Landroid/content/IIntentReceiver;)V

    goto/16 :goto_0

    .line 4687
    .end local v11           #extras:Landroid/os/Bundle;
    :catchall_1
    move-exception v4

    :try_start_a
    monitor-exit v3
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    :try_start_b
    throw v4
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 4698
    :cond_7
    const/4 v4, 0x0

    goto :goto_2

    .line 4706
    :cond_8
    const/4 v6, 0x0

    goto :goto_3

    .line 4708
    :catchall_2
    move-exception v3

    :try_start_c
    monitor-exit v13
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :try_start_d
    throw v3
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 4717
    :catchall_3
    move-exception v4

    :try_start_e
    monitor-exit v3
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_3

    :try_start_f
    throw v4
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 4718
    .end local v5           #p:Landroid/content/pm/PackageParser$Package;
    .end local v12           #fullPath:Ljava/io/File;
    .restart local v13       #fullPath:Ljava/io/File;
    :catchall_4
    move-exception v3

    move-object v12, v13

    .end local v13           #fullPath:Ljava/io/File;
    .restart local v12       #fullPath:Ljava/io/File;
    goto/16 :goto_1
.end method
