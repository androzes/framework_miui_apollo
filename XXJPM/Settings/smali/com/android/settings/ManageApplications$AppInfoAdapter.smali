.class Lcom/android/settings/ManageApplications$AppInfoAdapter;
.super Landroid/widget/BaseAdapter;
.source "ManageApplications.java"

# interfaces
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppInfoAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;
    }
.end annotation


# instance fields
.field mAlphaComparator:Lcom/android/settings/ManageApplications$AlphaComparator;

.field private mAppFilter:Landroid/widget/Filter;

.field private mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppLocalList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mFilterLock:Ljava/lang/Object;

.field private mFilterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field mSizeComparator:Lcom/android/settings/ManageApplications$SizeComparator;

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method public constructor <init>(Lcom/android/settings/ManageApplications;Landroid/content/Context;Ljava/util/List;)V
    .locals 3
    .parameter
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v2, 0x0

    .line 1075
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 988
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    .line 989
    new-instance v0, Lcom/android/settings/ManageApplications$AlphaComparator;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {v0, v1}, Lcom/android/settings/ManageApplications$AlphaComparator;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAlphaComparator:Lcom/android/settings/ManageApplications$AlphaComparator;

    .line 990
    new-instance v0, Lcom/android/settings/ManageApplications$SizeComparator;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {v0, v1}, Lcom/android/settings/ManageApplications$SizeComparator;-><init>(Lcom/android/settings/ManageApplications;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mSizeComparator:Lcom/android/settings/ManageApplications$SizeComparator;

    .line 991
    new-instance v0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;

    invoke-direct {v0, p0, v2}, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;-><init>(Lcom/android/settings/ManageApplications$AppInfoAdapter;Lcom/android/settings/ManageApplications$1;)V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppFilter:Landroid/widget/Filter;

    .line 992
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    .line 993
    iput-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    .line 1076
    iput-object p3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 1077
    return-void
.end method

.method static synthetic access$3200(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$3300(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/util/Map;
    .locals 1
    .parameter "x0"

    .prologue
    .line 985
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3402(Lcom/android/settings/ManageApplications$AppInfoAdapter;Ljava/util/Map;)Ljava/util/Map;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    return-object p1
.end method

.method static synthetic access$3500(Lcom/android/settings/ManageApplications$AppInfoAdapter;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 985
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->reverseGenerateList()V

    return-void
.end method

.method private addFilterListLocked(ILandroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "newIdx"
    .parameter "info"
    .parameter "pLabel"

    .prologue
    .line 1010
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v1, p1, p2}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 1011
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1012
    :try_start_0
    iget-object v0, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1013
    .local v0, label:Ljava/lang/String;
    if-eqz p3, :cond_0

    .line 1014
    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1016
    :cond_0
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    iget-object v3, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1017
    monitor-exit v1

    .line 1018
    return-void

    .line 1017
    .end local v0           #label:Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method private addLocalEntry(Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z
    .locals 6
    .parameter "info"
    .parameter "label"

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1336
    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1338
    .local v1, pkgName:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$300(Lcom/android/settings/ManageApplications;)I

    move-result v2

    invoke-direct {p0, v2, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->shouldBeInList(ILandroid/content/pm/ApplicationInfo;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1341
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;)I

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getAppComparator(I)Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v2, p1, v3}, Ljava/util/Collections;->binarySearch(Ljava/util/List;Ljava/lang/Object;Ljava/util/Comparator;)I

    move-result v0

    .line 1343
    .local v0, newIdx:I
    if-ltz v0, :cond_1

    .line 1344
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Strange. Package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not new"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v5

    .line 1354
    .end local v0           #newIdx:I
    :goto_0
    return v2

    .line 1348
    .restart local v0       #newIdx:I
    :cond_1
    neg-int v2, v0

    sub-int v0, v2, v4

    .line 1349
    invoke-direct {p0, v0, p1, p2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->addFilterListLocked(ILandroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)V

    .line 1351
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    move v2, v4

    .line 1352
    goto :goto_0

    .end local v0           #newIdx:I
    :cond_2
    move v2, v5

    .line 1354
    goto :goto_0
.end method

.method private adjustIndex()V
    .locals 5

    .prologue
    .line 1174
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v1

    .line 1175
    .local v1, imax:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1176
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1177
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v3

    iput v0, v3, Lcom/android/settings/ManageApplications$AppInfo;->index:I

    .line 1175
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1179
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_0
    return-void
.end method

.method private generateFilterListLocked(Ljava/util/List;)V
    .locals 8
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 996
    .local p1, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    .line 997
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    monitor-enter v4

    .line 998
    :try_start_0
    iget-object v5, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 999
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1000
    .local v3, label:Ljava/lang/String;
    iget-object v5, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v5}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v5

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v5, v6}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1001
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_0

    iget-object v5, v0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    .line 1002
    iget-object v5, v0, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1004
    :cond_0
    iget-object v5, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    iget-object v6, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1006
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    .end local v3           #label:Ljava/lang/String;
    :catchall_0
    move-exception v5

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_1
    :try_start_1
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1007
    return-void
.end method

.method private getAppComparator(I)Ljava/util/Comparator;
    .locals 1
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Comparator",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1228
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 1229
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAlphaComparator:Lcom/android/settings/ManageApplications$AlphaComparator;

    .line 1231
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mSizeComparator:Lcom/android/settings/ManageApplications$SizeComparator;

    goto :goto_0
.end method

.method private removeFilterListLocked(Ljava/lang/String;)Z
    .locals 7
    .parameter "removePkg"

    .prologue
    const/4 v6, 0x1

    .line 1022
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v0

    .line 1024
    .local v0, N:I
    sub-int v1, v0, v6

    .local v1, i:I
    :goto_0
    if-ltz v1, :cond_2

    .line 1025
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ApplicationInfo;

    .line 1026
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1027
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from local list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1028
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1029
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1030
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mFilterMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1031
    monitor-exit v3

    move v3, v6

    .line 1035
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :goto_1
    return v3

    .line 1031
    .restart local v2       #info:Landroid/content/pm/ApplicationInfo;
    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 1024
    :cond_1
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 1035
    .end local v2           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    const/4 v3, 0x0

    goto :goto_1
.end method

.method private removePkgBase(Ljava/lang/String;)V
    .locals 6
    .parameter "pkgName"

    .prologue
    .line 1380
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v2

    .line 1381
    .local v2, imax:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 1382
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1383
    .local v0, app:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1384
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing pkg: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " from base list"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1385
    :cond_0
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 1389
    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_1
    return-void

    .line 1381
    .restart local v0       #app:Landroid/content/pm/ApplicationInfo;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method private reverseGenerateList()V
    .locals 5

    .prologue
    .line 1039
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$300(Lcom/android/settings/ManageApplications;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ManageApplications;->getFilteredApps(Ljava/util/List;IZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->generateFilterListLocked(Ljava/util/List;)V

    .line 1040
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortListInner(I)V

    .line 1041
    return-void

    .line 1039
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private shouldBeInList(ILandroid/content/pm/ApplicationInfo;)Z
    .locals 6
    .parameter "filterOption"
    .parameter "info"

    .prologue
    const/4 v5, 0x1

    .line 1276
    if-ne p1, v5, :cond_1

    .line 1277
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-virtual {v3, v5}, Lcom/android/settings/ManageApplications;->getInstalledApps(I)Ljava/util/List;

    move-result-object v2

    .line 1278
    .local v2, runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1279
    .local v1, running:Landroid/content/pm/ApplicationInfo;
    iget-object v3, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, p2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v5

    .line 1296
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #running:Landroid/content/pm/ApplicationInfo;
    .end local v2           #runningList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    :goto_0
    return v3

    .line 1283
    :cond_1
    const/4 v3, 0x2

    if-ne p1, v3, :cond_3

    .line 1284
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_2

    move v3, v5

    .line 1285
    goto :goto_0

    .line 1286
    :cond_2
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v3, v3, 0x80

    if-eqz v3, :cond_5

    move v3, v5

    .line 1287
    goto :goto_0

    .line 1289
    :cond_3
    const/4 v3, 0x3

    if-ne p1, v3, :cond_4

    .line 1290
    iget v3, p2, Landroid/content/pm/ApplicationInfo;->flags:I

    const/high16 v4, 0x4

    and-int/2addr v3, v4

    if-eqz v3, :cond_5

    move v3, v5

    .line 1291
    goto :goto_0

    :cond_4
    move v3, v5

    .line 1294
    goto :goto_0

    .line 1296
    :cond_5
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private sortListInner(I)V
    .locals 1
    .parameter "sortOrder"

    .prologue
    .line 1193
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortAppList(Ljava/util/List;I)V

    .line 1194
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    .line 1195
    return-void
.end method


# virtual methods
.method public addToList(Ljava/lang/String;JLjava/lang/String;)V
    .locals 11
    .parameter "pkgName"
    .parameter "size"
    .parameter "formattedSize"

    .prologue
    const-string v2, "ManageApplications"

    .line 1307
    if-nez p1, :cond_1

    .line 1333
    :cond_0
    :goto_0
    return-void

    .line 1311
    :cond_1
    const/4 v9, 0x0

    .line 1313
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    .line 1318
    if-nez v9, :cond_2

    .line 1320
    const-string v0, "ManageApplications"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Null ApplicationInfo for package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1314
    :catch_0
    move-exception v0

    move-object v8, v0

    .line 1315
    .local v8, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v0, "ManageApplications"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring non-existent package:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1324
    .end local v8           #e:Landroid/content/pm/PackageManager$NameNotFoundException;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1327
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1328
    .local v3, label:Ljava/lang/CharSequence;
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v10

    new-instance v0, Lcom/android/settings/ManageApplications$AppInfo;

    const/4 v2, -0x1

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v9, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    move-object v1, p1

    move-wide v5, p2

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;Landroid/graphics/drawable/Drawable;JLjava/lang/CharSequence;)V

    invoke-virtual {v10, v0}, Lcom/android/settings/ManageApplications$AppInfoCache;->addEntry(Lcom/android/settings/ManageApplications$AppInfo;)V

    .line 1330
    invoke-direct {p0, v9, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->addLocalEntry(Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1331
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bulkUpdateIcons(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1235
    .local p1, icons:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    if-nez p1, :cond_1

    .line 1253
    :cond_0
    :goto_0
    return-void

    .line 1238
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    .line 1239
    .local v5, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1240
    .local v1, changed:Z
    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1241
    .local v4, key:Ljava/lang/String;
    invoke-interface {p1, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/graphics/drawable/Drawable;

    .line 1242
    .local v3, ic:Landroid/graphics/drawable/Drawable;
    if-eqz v3, :cond_2

    .line 1243
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1244
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_2

    .line 1245
    invoke-virtual {v0, v3}, Lcom/android/settings/ManageApplications$AppInfo;->refreshIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1246
    const/4 v1, 0x1

    goto :goto_1

    .line 1250
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v3           #ic:Landroid/graphics/drawable/Drawable;
    .end local v4           #key:Ljava/lang/String;
    :cond_3
    if-eqz v1, :cond_0

    .line 1251
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bulkUpdateLabels(Ljava/util/Map;)V
    .locals 7
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1256
    .local p1, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    if-nez p1, :cond_1

    .line 1272
    :cond_0
    :goto_0
    return-void

    .line 1259
    :cond_1
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 1260
    .local v4, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x0

    .line 1261
    .local v1, changed:Z
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1262
    .local v3, key:Ljava/lang/String;
    invoke-interface {p1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/CharSequence;

    .line 1263
    .local v5, label:Ljava/lang/CharSequence;
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v6

    invoke-static {v6, v3}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1264
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_2

    .line 1265
    invoke-virtual {v0, v5}, Lcom/android/settings/ManageApplications$AppInfo;->refreshLabel(Ljava/lang/CharSequence;)V

    .line 1266
    const/4 v1, 0x1

    goto :goto_1

    .line 1269
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v3           #key:Ljava/lang/String;
    .end local v5           #label:Ljava/lang/CharSequence;
    :cond_3
    if-eqz v1, :cond_0

    .line 1270
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public bulkUpdateSizes([Ljava/lang/String;[J[Ljava/lang/String;)V
    .locals 6
    .parameter "pkgs"
    .parameter "sizes"
    .parameter "formatted"

    .prologue
    .line 1419
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    if-nez p3, :cond_1

    .line 1436
    :cond_0
    :goto_0
    return-void

    .line 1422
    :cond_1
    const/4 v0, 0x0

    .line 1423
    .local v0, changed:Z
    const/4 v2, 0x0

    .local v2, i:I
    :goto_1
    array-length v3, p1

    if-ge v2, v3, :cond_4

    .line 1424
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    aget-object v4, p1, v2

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v1

    .line 1425
    .local v1, entry:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v1, :cond_3

    .line 1426
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_2

    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Entry for package:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, p1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "doesn\'t exist in map"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1423
    :cond_2
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1429
    :cond_3
    aget-wide v3, p2, v2

    aget-object v5, p3, v2

    invoke-virtual {v1, v3, v4, v5}, Lcom/android/settings/ManageApplications$AppInfo;->setSize(JLjava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1430
    const/4 v0, 0x1

    goto :goto_2

    .line 1433
    .end local v1           #entry:Lcom/android/settings/ManageApplications$AppInfo;
    :cond_4
    if-eqz v0, :cond_0

    .line 1434
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public getApplicationInfo(I)Landroid/content/pm/ApplicationInfo;
    .locals 3
    .parameter "position"

    .prologue
    .line 1101
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 1102
    .local v0, imax:I
    if-ltz p1, :cond_0

    if-lt p1, v0, :cond_1

    .line 1103
    :cond_0
    const-string v1, "ManageApplications"

    const-string v2, "Position out of bounds in List Adapter"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1104
    const/4 v1, 0x0

    .line 1106
    .end local p0
    :goto_0
    return-object v1

    .restart local p0
    :cond_1
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    move-object v1, p0

    goto :goto_0
.end method

.method public getBaseAppList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    return-object v0
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 1439
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppFilter:Landroid/widget/Filter;

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "position"

    .prologue
    .line 1084
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 6
    .parameter "position"

    .prologue
    const-wide/16 v4, -0x1

    .line 1110
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    .line 1111
    .local v1, imax:I
    if-ltz p1, :cond_0

    if-lt p1, v1, :cond_1

    .line 1112
    :cond_0
    const-string v2, "ManageApplications"

    const-string v3, "Position out of bounds in List Adapter"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-wide v2, v4

    .line 1119
    .end local p0
    :goto_0
    return-wide v2

    .line 1115
    .restart local p0
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v2

    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1116
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v0, :cond_2

    move-wide v2, v4

    .line 1117
    goto :goto_0

    .line 1119
    :cond_2
    iget v2, v0, Lcom/android/settings/ManageApplications$AppInfo;->index:I

    int-to-long v2, v2

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 7
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    const/4 v5, 0x0

    const-string v6, "ManageApplications"

    .line 1127
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lt p1, v3, :cond_0

    .line 1128
    const-string v3, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid view position:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", actual size is:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v3, v5

    .line 1170
    :goto_0
    return-object v3

    .line 1138
    :cond_0
    if-nez p2, :cond_4

    .line 1139
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$3100(Lcom/android/settings/ManageApplications;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030027

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 1143
    new-instance v1, Lcom/android/settings/ManageApplications$AppViewHolder;

    invoke-direct {v1}, Lcom/android/settings/ManageApplications$AppViewHolder;-><init>()V

    .line 1144
    .local v1, holder:Lcom/android/settings/ManageApplications$AppViewHolder;
    const v3, 0x7f0b0077

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    .line 1145
    const v3, 0x7f0b0076

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    iput-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    .line 1146
    const v3, 0x7f0b0078

    invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    .line 1147
    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1155
    :goto_1
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 1156
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v2

    .line 1157
    .local v2, mInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v2, :cond_5

    .line 1158
    iget-object v3, v2, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    if-eqz v3, :cond_1

    .line 1159
    iget-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appName:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/settings/ManageApplications$AppInfo;->appName:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1161
    :cond_1
    iget-object v3, v2, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    .line 1162
    iget-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appIcon:Landroid/widget/ImageView;

    iget-object v4, v2, Lcom/android/settings/ManageApplications$AppInfo;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1164
    :cond_2
    iget-object v3, v2, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    if-eqz v3, :cond_3

    .line 1165
    iget-object v3, v1, Lcom/android/settings/ManageApplications$AppViewHolder;->appSize:Landroid/widget/TextView;

    iget-object v4, v2, Lcom/android/settings/ManageApplications$AppInfo;->appSize:Ljava/lang/CharSequence;

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_3
    :goto_2
    move-object v3, p2

    .line 1170
    goto :goto_0

    .line 1151
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v1           #holder:Lcom/android/settings/ManageApplications$AppViewHolder;
    .end local v2           #mInfo:Lcom/android/settings/ManageApplications$AppInfo;
    :cond_4
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/settings/ManageApplications$AppViewHolder;

    .restart local v1       #holder:Lcom/android/settings/ManageApplications$AppViewHolder;
    goto :goto_1

    .line 1168
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    .restart local v2       #mInfo:Lcom/android/settings/ManageApplications$AppInfo;
    :cond_5
    const-string v3, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No info for package:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " in property map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v6, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public initMapFromList(Ljava/util/List;I)V
    .locals 11
    .parameter
    .parameter "filterOption"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1046
    .local p1, pAppList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v10, 0x0

    .line 1047
    .local v10, notify:Z
    const/4 v7, 0x0

    .line 1048
    .local v7, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    if-nez p1, :cond_2

    .line 1050
    iget-object v7, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 1056
    :goto_0
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    if-eqz v3, :cond_3

    const/4 v3, 0x1

    :goto_1
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    invoke-virtual {v1, v7, p2, v3, v4}, Lcom/android/settings/ManageApplications;->getFilteredApps(Ljava/util/List;IZLjava/util/Map;)Ljava/util/List;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->generateFilterListLocked(Ljava/util/List;)V

    .line 1058
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    .line 1059
    .local v8, imax:I
    const/4 v2, 0x0

    .local v2, i:I
    :goto_2
    if-ge v2, v8, :cond_4

    .line 1060
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ApplicationInfo;

    .line 1061
    .local v9, info:Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v1

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v1, v3}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1062
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v0, :cond_1

    .line 1063
    new-instance v0, Lcom/android/settings/ManageApplications$AppInfo;

    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const-wide/16 v4, -0x1

    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v6}, Lcom/android/settings/ManageApplications;->access$3000(Lcom/android/settings/ManageApplications;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/android/settings/ManageApplications$AppInfo;-><init>(Ljava/lang/String;ILjava/lang/CharSequence;JLjava/lang/CharSequence;)V

    .line 1065
    .restart local v0       #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Creating entry pkg:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v9, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to map"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    :cond_0
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/android/settings/ManageApplications$AppInfoCache;->addEntry(Lcom/android/settings/ManageApplications$AppInfo;)V

    .line 1059
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 1052
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v2           #i:I
    .end local v8           #imax:I
    .end local v9           #info:Landroid/content/pm/ApplicationInfo;
    :cond_2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    .line 1053
    move-object v7, p1

    .line 1054
    const/4 v10, 0x1

    goto :goto_0

    .line 1056
    :cond_3
    const/4 v3, 0x0

    goto :goto_1

    .line 1069
    .restart local v2       #i:I
    .restart local v8       #imax:I
    :cond_4
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v1}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;)I

    move-result v1

    invoke-direct {p0, v1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortListInner(I)V

    .line 1070
    if-eqz v10, :cond_5

    .line 1071
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    .line 1073
    :cond_5
    return-void
.end method

.method public isInstalled(Ljava/lang/String;)Z
    .locals 5
    .parameter "pkgName"

    .prologue
    const/4 v4, 0x0

    .line 1088
    if-nez p1, :cond_1

    .line 1089
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "ManageApplications"

    const-string v3, "Null pkg name when checking if installed"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    move v2, v4

    .line 1097
    :goto_0
    return v2

    .line 1092
    :cond_1
    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1093
    .local v1, info:Landroid/content/pm/ApplicationInfo;
    iget-object v2, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1094
    const/4 v2, 0x1

    goto :goto_0

    .end local v1           #info:Landroid/content/pm/ApplicationInfo;
    :cond_3
    move v2, v4

    .line 1097
    goto :goto_0
.end method

.method public removeFromList(Ljava/util/List;)V
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, pkgNames:Ljava/util/List;,"Ljava/util/List<Ljava/lang/String;>;"
    const-string v5, "ManageApplications"

    .line 1392
    if-nez p1, :cond_1

    .line 1416
    :cond_0
    :goto_0
    return-void

    .line 1395
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_0

    .line 1398
    const/4 v0, 0x0

    .line 1399
    .local v0, found:Z
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1401
    .local v2, pkg:Ljava/lang/String;
    invoke-direct {p0, v2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->removePkgBase(Ljava/lang/String;)V

    .line 1403
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_3

    const-string v3, "ManageApplications"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Removing "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " from cache"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1404
    :cond_3
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/android/settings/ManageApplications$AppInfoCache;->removeEntry(Ljava/lang/String;)V

    .line 1406
    invoke-direct {p0, v2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->removeFilterListLocked(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1407
    const/4 v0, 0x1

    goto :goto_1

    .line 1411
    .end local v2           #pkg:Ljava/lang/String;
    :cond_4
    if-eqz v0, :cond_0

    .line 1412
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    .line 1413
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v3

    if-eqz v3, :cond_5

    const-string v3, "ManageApplications"

    const-string v3, "adjusting index and notifying list view"

    invoke-static {v5, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1414
    :cond_5
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_0
.end method

.method public resetAppList(I)Z
    .locals 8
    .parameter "filterOption"

    .prologue
    const/4 v7, 0x1

    .line 1211
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    iget-object v5, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    if-eqz v5, :cond_1

    move v5, v7

    :goto_0
    iget-object v6, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    invoke-virtual {v3, v4, p1, v5, v6}, Lcom/android/settings/ManageApplications;->getFilteredApps(Ljava/util/List;IZLjava/util/Map;)Ljava/util/List;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->generateFilterListLocked(Ljava/util/List;)V

    .line 1213
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ApplicationInfo;

    .line 1214
    .local v1, applicationInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v3

    iget-object v4, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1215
    .local v0, appInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-nez v0, :cond_0

    .line 1216
    const-string v3, "ManageApplications"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " Entry does not exist for pkg:  "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1211
    .end local v0           #appInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v1           #applicationInfo:Landroid/content/pm/ApplicationInfo;
    .end local v2           #i$:Ljava/util/Iterator;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1219
    .restart local v2       #i$:Ljava/util/Iterator;
    :cond_2
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppLocalList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_3

    .line 1220
    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v3}, Lcom/android/settings/ManageApplications;->access$1000(Lcom/android/settings/ManageApplications;)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortList(I)V

    .line 1224
    :goto_2
    return v7

    .line 1222
    :cond_3
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    goto :goto_2
.end method

.method public sortAppList(Ljava/util/List;I)V
    .locals 1
    .parameter
    .parameter "sortOrder"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 1182
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-direct {p0, p2}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->getAppComparator(I)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 1183
    return-void
.end method

.method public sortBaseList(I)V
    .locals 5
    .parameter "sortOrder"

    .prologue
    .line 1186
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Sorting base list based on sortOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1187
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    invoke-virtual {p0, v0, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortAppList(Ljava/util/List;I)V

    .line 1188
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mAppList:Ljava/util/List;

    iget-object v2, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v2}, Lcom/android/settings/ManageApplications;->access$300(Lcom/android/settings/ManageApplications;)I

    move-result v2

    iget-object v3, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->mCurrentFilterMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/ManageApplications;->getFilteredApps(Ljava/util/List;IZLjava/util/Map;)Ljava/util/List;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->generateFilterListLocked(Ljava/util/List;)V

    .line 1189
    invoke-direct {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->adjustIndex()V

    .line 1190
    return-void

    .line 1188
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public sortList(I)V
    .locals 3
    .parameter "sortOrder"

    .prologue
    .line 1198
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v0}, Lcom/android/settings/ManageApplications;->access$000(Lcom/android/settings/ManageApplications;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ManageApplications"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sortOrder = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1199
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->sortListInner(I)V

    .line 1200
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    .line 1201
    return-void
.end method

.method public updatePackage(Ljava/lang/String;JLjava/lang/String;)V
    .locals 6
    .parameter "pkgName"
    .parameter "size"
    .parameter "formattedSize"

    .prologue
    .line 1359
    const/4 v2, 0x0

    .line 1361
    .local v2, info:Landroid/content/pm/ApplicationInfo;
    :try_start_0
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x2000

    invoke-virtual {v4, p1, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 1366
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/ManageApplications;->access$1500(Lcom/android/settings/ManageApplications;)Lcom/android/settings/ManageApplications$AppInfoCache;

    move-result-object v4

    invoke-static {v4, p1}, Lcom/android/settings/ManageApplications$AppInfoCache;->access$2600(Lcom/android/settings/ManageApplications$AppInfoCache;Ljava/lang/String;)Lcom/android/settings/ManageApplications$AppInfo;

    move-result-object v0

    .line 1367
    .local v0, aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    if-eqz v0, :cond_0

    .line 1368
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    .line 1369
    .local v3, label:Ljava/lang/CharSequence;
    invoke-virtual {v0, v3}, Lcom/android/settings/ManageApplications$AppInfo;->refreshLabel(Ljava/lang/CharSequence;)V

    .line 1370
    iget-object v4, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v4}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/android/settings/ManageApplications$AppInfo;->refreshIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1371
    invoke-virtual {v0, p2, p3, p4}, Lcom/android/settings/ManageApplications$AppInfo;->setSize(JLjava/lang/String;)Z

    .line 1373
    invoke-direct {p0, v2, v3}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->addLocalEntry(Landroid/content/pm/ApplicationInfo;Ljava/lang/CharSequence;)Z

    .line 1375
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    .line 1377
    .end local v0           #aInfo:Lcom/android/settings/ManageApplications$AppInfo;
    .end local v3           #label:Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-void

    .line 1363
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 1364
    .local v1, e:Landroid/content/pm/PackageManager$NameNotFoundException;
    goto :goto_0
.end method
