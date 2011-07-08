.class Lcom/android/settings/ManageApplications$ResourceLoaderThread;
.super Ljava/lang/Thread;
.source "ManageApplications.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ManageApplications;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ResourceLoaderThread"
.end annotation


# static fields
.field static final MSG_PKG_SIZE:I = 0x8


# instance fields
.field volatile abort:Z

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/settings/ManageApplications;


# direct methods
.method constructor <init>(Lcom/android/settings/ManageApplications;)V
    .locals 1
    .parameter

    .prologue
    .line 830
    iput-object p1, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 832
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    return-void
.end method


# virtual methods
.method loadAllResources(Ljava/util/List;)V
    .locals 0
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
    .line 839
    .local p1, appList:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    .line 840
    invoke-virtual {p0}, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->start()V

    .line 841
    return-void
.end method

.method public run()V
    .locals 13

    .prologue
    .line 849
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    if-eqz v11, :cond_0

    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v4

    .local v4, imax:I
    if-gtz v4, :cond_2

    .line 850
    .end local v4           #imax:I
    :cond_0
    const-string v11, "ManageApplications"

    const-string v12, "Empty or null application list"

    invoke-static {v11, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 899
    :cond_1
    :goto_0
    return-void

    .line 852
    .restart local v4       #imax:I
    :cond_2
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v10

    .line 853
    .local v10, size:I
    div-int/lit8 v9, v10, 0x8

    .line 854
    .local v9, numMsgs:I
    mul-int/lit8 v11, v9, 0x8

    if-le v10, v11, :cond_3

    .line 855
    add-int/lit8 v9, v9, 0x1

    .line 857
    :cond_3
    const/4 v2, 0x0

    .line 858
    .local v2, endi:I
    const/4 v5, 0x0

    .local v5, j:I
    :goto_1
    if-ge v5, v10, :cond_7

    .line 859
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 860
    .local v7, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    add-int/lit8 v2, v2, 0x8

    .line 861
    if-le v2, v10, :cond_4

    .line 862
    move v2, v10

    .line 864
    :cond_4
    move v3, v5

    .local v3, i:I
    :goto_2
    if-ge v3, v2, :cond_5

    .line 865
    iget-boolean v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    if-eqz v11, :cond_6

    .line 873
    :cond_5
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    const/4 v12, 0x7

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 874
    .local v8, msg:Landroid/os/Message;
    iput-object v7, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 875
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 858
    add-int/lit8 v5, v5, 0x8

    goto :goto_1

    .line 869
    .end local v8           #msg:Landroid/os/Message;
    :cond_6
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 870
    .local v0, appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v12}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-interface {v7, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 864
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 877
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v3           #i:I
    .end local v7           #map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Ljava/lang/CharSequence;>;"
    :cond_7
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0x8

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 878
    .local v1, doneMsg:Landroid/os/Message;
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 885
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 886
    .local v6, map:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/String;Landroid/graphics/drawable/Drawable;>;"
    const/4 v11, 0x1

    sub-int v3, v4, v11

    .restart local v3       #i:I
    :goto_3
    if-ltz v3, :cond_8

    .line 887
    iget-boolean v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    if-nez v11, :cond_1

    .line 890
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->mAppList:Ljava/util/List;

    invoke-interface {v11, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 891
    .restart local v0       #appInfo:Landroid/content/pm/ApplicationInfo;
    iget-object v11, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v12, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v12}, Lcom/android/settings/ManageApplications;->access$1300(Lcom/android/settings/ManageApplications;)Landroid/content/pm/PackageManager;

    move-result-object v12

    invoke-virtual {v0, v12}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    invoke-interface {v6, v11, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 886
    add-int/lit8 v3, v3, -0x1

    goto :goto_3

    .line 893
    .end local v0           #appInfo:Landroid/content/pm/ApplicationInfo;
    :cond_8
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    const/16 v12, 0xb

    invoke-virtual {v11, v12}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v8

    .line 894
    .restart local v8       #msg:Landroid/os/Message;
    iput-object v6, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 895
    iget-object v11, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->this$0:Lcom/android/settings/ManageApplications;

    invoke-static {v11}, Lcom/android/settings/ManageApplications;->access$500(Lcom/android/settings/ManageApplications;)Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0
.end method

.method public setAbort()V
    .locals 1

    .prologue
    .line 836
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/ManageApplications$ResourceLoaderThread;->abort:Z

    .line 837
    return-void
.end method
