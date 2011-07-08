.class Lcom/android/settings/ManageApplications$PkgSizeObserver;
.super Landroid/content/pm/IPackageStatsObserver$Stub;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PkgSizeObserver"
.end annotation


# instance fields
.field pkgName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter

    .prologue
    .line 1529
    iput-object p1, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/content/pm/IPackageStatsObserver$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public invokeGetSizeInfo(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 1559
    if-nez p1, :cond_0

    .line 1566
    :goto_0
    return-void

    .line 1562
    :cond_0
    iput-object p1, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->pkgName:Ljava/lang/String;

    .line 1563
    iget-object v0, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invoking getPackageSizeInfo for package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1565
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Landroid/content/pm/PackageManager;->getPackageSizeInfo(Ljava/lang/String;Landroid/content/pm/IPackageStatsObserver;)V

    goto :goto_0
.end method

.method public onGetStatsCompleted(Landroid/content/pm/PackageStats;Z)V
    .locals 9
    .parameter "pStats"
    .parameter "pSucceeded"

    .prologue
    const-string v8, "ManageApplications"

    .line 1532
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$3600(Lcom/android/settings/ManageApplications;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1534
    const-wide/16 v5, 0x2710

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1538
    :cond_0
    :goto_0
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 1539
    .local v0, data:Landroid/os/Bundle;
    const-string v5, "p"

    iget-object v6, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1540
    const-string v5, "passed"

    invoke-virtual {v0, v5, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 1541
    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 1542
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v5

    if-eqz v5, :cond_1

    const-string v5, "ManageApplications"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "onGetStatsCompleted::"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->pkgName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", ("

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->cacheSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->codeSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-wide v6, p1, Landroid/content/pm/PackageStats;->dataSize:J

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v8, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1545
    :cond_1
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5, p1}, Lcom/android/settings/ManageApplications;->access$2400(Lcom/android/settings/ManageApplications;Landroid/content/pm/PackageStats;)J

    move-result-wide v3

    .line 1546
    .local v3, total:J
    const-string v5, "s"

    invoke-virtual {v0, v5, v3, v4}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 1547
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5, v3, v4}, Lcom/android/settings/ManageApplications;->access$2500(Lcom/android/settings/ManageApplications;J)Ljava/lang/CharSequence;

    move-result-object v2

    .line 1548
    .local v2, sizeStr:Ljava/lang/CharSequence;
    const-string v5, "f"

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1553
    .end local v2           #sizeStr:Ljava/lang/CharSequence;
    .end local v3           #total:J
    :goto_1
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v5

    const/4 v6, 0x6

    invoke-virtual {v5, v6, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1554
    .local v1, msg:Landroid/os/Message;
    invoke-virtual {v1, v0}, Landroid/os/Message;->setData(Landroid/os/Bundle;)V

    .line 1555
    iget-object v5, p0, Lcom/android/settings/ManageApplications$PkgSizeObserver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1556
    return-void

    .line 1550
    .end local v1           #msg:Landroid/os/Message;
    :cond_2
    const-string v5, "ManageApplications"

    const-string v5, "Invalid package stats from PackageManager"

    invoke-static {v8, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1535
    .end local v0           #data:Landroid/os/Bundle;
    :catch_0
    move-exception v5

    goto/16 :goto_0
.end method
