.class Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;
.super Landroid/widget/Filter;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications$AppInfoAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppFilter"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;


# direct methods
.method private constructor <init>(Lcom/android/settings/ManageApplications$AppInfoAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1442
    iput-object p1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/settings/ManageApplications$AppInfoAdapter;Lcom/android/settings/ManageApplications$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 1442
    invoke-direct {p0, p1}, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;-><init>(Lcom/android/settings/ManageApplications$AppInfoAdapter;)V

    return-void
.end method


# virtual methods
.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 12
    .parameter "prefix"

    .prologue
    .line 1445
    new-instance v7, Landroid/widget/Filter$FilterResults;

    invoke-direct {v7}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 1446
    .local v7, results:Landroid/widget/Filter$FilterResults;
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-nez v9, :cond_1

    .line 1447
    :cond_0
    iget-object v9, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-static {v9}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3200(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1448
    :try_start_0
    new-instance v10, Ljava/util/HashMap;

    iget-object v11, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-static {v11}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3300(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    iput-object v10, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1449
    iget-object v10, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-static {v10}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3300(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->size()I

    move-result v10

    iput v10, v7, Landroid/widget/Filter$FilterResults;->count:I

    .line 1450
    monitor-exit v9

    .line 1471
    :goto_0
    return-object v7

    .line 1450
    :catchall_0
    move-exception v10

    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v10

    .line 1452
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    .line 1453
    .local v6, prefixString:Ljava/lang/String;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, " "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1454
    .local v8, spacePrefixString:Ljava/lang/String;
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1455
    .local v5, newMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v9, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-static {v9}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3200(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/lang/Object;

    move-result-object v9

    monitor-enter v9

    .line 1456
    :try_start_1
    iget-object v10, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-static {v10}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3300(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v4

    .line 1457
    .local v4, localMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iget-object v10, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-static {v10}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3300(Lcom/android/settings/ManageApplications$AppInfoAdapter;)Ljava/util/Map;

    move-result-object v10

    invoke-interface {v10}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v2

    .line 1458
    .local v2, keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 1459
    .local v1, key:Ljava/lang/String;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1460
    .local v3, label:Ljava/lang/String;
    if-eqz v3, :cond_2

    .line 1461
    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    .line 1462
    invoke-virtual {v3, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_3

    invoke-virtual {v3, v8}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v10

    const/4 v11, -0x1

    if-eq v10, v11, :cond_2

    .line 1464
    :cond_3
    invoke-interface {v5, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1467
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #key:Ljava/lang/String;
    .end local v2           #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .end local v3           #label:Ljava/lang/String;
    .end local v4           #localMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :catchall_1
    move-exception v10

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v10

    .restart local v0       #i$:Ljava/util/Iterator;
    .restart local v2       #keys:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v4       #localMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    :cond_4
    :try_start_2
    monitor-exit v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1468
    iput-object v5, v7, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 1469
    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v9

    iput v9, v7, Landroid/widget/Filter$FilterResults;->count:I

    goto :goto_0
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 2
    .parameter "constraint"
    .parameter "results"

    .prologue
    .line 1476
    iget-object v1, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/Map;

    invoke-static {v1, v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3402(Lcom/android/settings/ManageApplications$AppInfoAdapter;Ljava/util/Map;)Ljava/util/Map;

    .line 1477
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-static {v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->access$3500(Lcom/android/settings/ManageApplications$AppInfoAdapter;)V

    .line 1478
    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_0

    .line 1479
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetChanged()V

    .line 1483
    :goto_0
    return-void

    .line 1481
    :cond_0
    iget-object v0, p0, Lcom/android/settings/ManageApplications$AppInfoAdapter$AppFilter;->this$1:Lcom/android/settings/ManageApplications$AppInfoAdapter;

    invoke-virtual {v0}, Lcom/android/settings/ManageApplications$AppInfoAdapter;->notifyDataSetInvalidated()V

    goto :goto_0
.end method
