.class Lcom/android/settings/ManageApplications$PackageIntentReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PackageIntentReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method private constructor <init>(Lcom/android/settings/ManageApplications;)V
    .locals 0
    .parameter

    .prologue
    .line 1572
    iput-object p1, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ManageApplications;Lcom/android/settings/ManageApplications$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1572
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications$PackageIntentReceiver;-><init>(Lcom/android/settings/ManageApplications;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .parameter "context"
    .parameter "intent"

    .prologue
    const-string v10, "android.intent.action.PACKAGE_REMOVED"

    const-string v9, "android.intent.action.PACKAGE_ADDED"

    .line 1587
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1588
    .local v0, actionStr:Ljava/lang/String;
    const-string v7, "android.intent.action.PACKAGE_ADDED"

    invoke-virtual {v9, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    const-string v7, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 1590
    :cond_0
    invoke-virtual {p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v2

    .line 1591
    .local v2, data:Landroid/net/Uri;
    invoke-virtual {v2}, Landroid/net/Uri;->getEncodedSchemeSpecificPart()Ljava/lang/String;

    move-result-object v6

    .line 1592
    .local v6, pkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v7, v0, v6}, Lcom/android/settings/ManageApplications;->access$2000(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    .line 1611
    .end local v2           #data:Landroid/net/Uri;
    .end local v6           #pkgName:Ljava/lang/String;
    :cond_1
    return-void

    .line 1593
    :cond_2
    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    const-string v7, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v7, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 1601
    :cond_3
    const-string v7, "android.intent.extra.changed_package_list"

    invoke-virtual {p2, v7}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1602
    .local v5, pkgList:[Ljava/lang/String;
    if-eqz v5, :cond_1

    array-length v7, v5

    if-eqz v7, :cond_1

    .line 1606
    move-object v1, v5

    .local v1, arr$:[Ljava/lang/String;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_0
    if-ge v3, v4, :cond_1

    aget-object v6, v1, v3

    .line 1607
    .restart local v6       #pkgName:Ljava/lang/String;
    iget-object v7, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    const-string v8, "android.intent.action.PACKAGE_REMOVED"

    invoke-static {v7, v10, v6}, Lcom/android/settings/ManageApplications;->access$2000(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    .line 1608
    iget-object v7, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    const-string v8, "android.intent.action.PACKAGE_ADDED"

    invoke-static {v7, v9, v6}, Lcom/android/settings/ManageApplications;->access$2000(Lcom/android/settings/ManageApplications;Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method

.method registerReceiver()V
    .locals 3

    .prologue
    .line 1574
    new-instance v0, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.PACKAGE_ADDED"

    invoke-direct {v0, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 1575
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.PACKAGE_REMOVED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1576
    const-string v2, "android.intent.action.PACKAGE_CHANGED"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1577
    const-string v2, "package"

    invoke-virtual {v0, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 1578
    iget-object v2, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-virtual {v2, p0, v0}, Lcom/android/settings/ManageApplications;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1580
    new-instance v1, Landroid/content/IntentFilter;

    invoke-direct {v1}, Landroid/content/IntentFilter;-><init>()V

    .line 1581
    .local v1, sdFilter:Landroid/content/IntentFilter;
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_AVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1582
    const-string v2, "android.intent.action.EXTERNAL_APPLICATIONS_UNAVAILABLE"

    invoke-virtual {v1, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1583
    iget-object v2, p0, Lcom/android/settings/ManageApplications$PackageIntentReceiver;->this$0:Lcom/android/settings/ManageApplications;

    invoke-virtual {v2, p0, v1}, Lcom/android/settings/ManageApplications;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1584
    return-void
.end method
