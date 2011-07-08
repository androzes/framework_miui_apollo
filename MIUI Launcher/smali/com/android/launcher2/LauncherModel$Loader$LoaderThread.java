package com.android.launcher2; class LauncherModel$Loader$LoaderThread {/*

.class Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;
.super Ljava/lang/Thread;
.source "LauncherModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/LauncherModel$Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoaderThread"
.end annotation


# instance fields
.field private final mContentResolver:Landroid/content/ContentResolver;

.field private final mContext:Landroid/content/Context;

.field private mIsLaunching:Z

.field private mLoadAndBindStepFinished:Z

.field private final mManager:Landroid/content/pm/PackageManager;

.field private mStopped:Z

.field private mWaitThread:Ljava/lang/Thread;

.field final synthetic this$1:Lcom/android/launcher2/LauncherModel$Loader;


# direct methods
.method constructor <init>(Lcom/android/launcher2/LauncherModel$Loader;Landroid/content/Context;Ljava/lang/Thread;Z)V
    .locals 1
    .parameter
    .parameter "context"
    .parameter "waitThread"
    .parameter "isLaunching"

    .prologue
    .line 601
    iput-object p1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 602
    #p0=(Reference);
    iput-object p2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    .line 603
    iput-object p3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 604
    iput-boolean p4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    .line 605
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    #v0=(Reference);
    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    .line 606
    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    .line 607
    return-void
.end method

.method static synthetic access$400(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 592
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v0=(Boolean);
    return v0
.end method

.method private bindWorkspace()V
    .locals 20

    .prologue
    .line 1058
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 1062
    .local v17, t:J
    #v17=(LongLo);v18=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v7

    #v7=(Reference);
    check-cast v7, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 1063
    .local v7, oldCallbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-nez v7, :cond_0

    .line 1065
    const-string v4, "Launcher.Model"

    const-string v5, "LoaderThread running with no launcher"

    #v5=(Reference);
    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1201
    :goto_0
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v6=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v19=(Conflicted);
    return-void

    .line 1071
    :cond_0
    #v1=(Uninit);v2=(Uninit);v3=(Uninit);v5=(Uninit);v6=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v19=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/launcher2/DeferredHandler;->cancel()V

    .line 1074
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-object v2, v7

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$5;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1083
    new-instance v6, Ljava/util/ArrayList;

    #v6=(UninitRef);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-direct {v6, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1084
    .local v6, itemClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ItemInfo;>;"
    #v6=(Reference);
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1085
    .local v10, N:I
    #v10=(Integer);
    const/16 v16, 0x0

    .local v16, i:I
    :goto_1
    #v1=(Conflicted);v8=(Conflicted);v9=(Conflicted);v11=(Conflicted);v16=(Integer);
    move/from16 v0, v16

    #v0=(Integer);
    move v1, v10

    #v1=(Integer);
    if-ge v0, v1, :cond_2

    .line 1086
    move/from16 v8, v16

    .line 1087
    .local v8, start:I
    #v8=(Integer);
    add-int/lit8 v4, v16, 0x6

    #v4=(Integer);
    if-gt v4, v10, :cond_1

    const/4 v4, 0x6

    #v4=(PosByte);
    move v9, v4

    .line 1088
    .local v9, chunkSize:I
    :goto_2
    #v4=(Integer);v9=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v11

    #v11=(Reference);
    new-instance v4, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;

    #v4=(UninitRef);
    move-object/from16 v5, p0

    invoke-direct/range {v4 .. v9}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$6;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;II)V

    #v4=(Reference);
    invoke-virtual {v11, v4}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1085
    add-int/lit8 v16, v16, 0x6

    goto :goto_1

    .line 1087
    .end local v9           #chunkSize:I
    :cond_1
    #v0=(Integer);v4=(Integer);v9=(Conflicted);v11=(Conflicted);
    sub-int v4, v10, v16

    move v9, v4

    #v9=(Integer);
    goto :goto_2

    .line 1098
    .end local v8           #start:I
    :cond_2
    #v4=(Reference);v8=(Conflicted);v9=(Conflicted);
    new-instance v13, Ljava/util/HashMap;

    #v13=(UninitRef);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-direct {v13, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 1099
    .local v13, foldersClone:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/Long;Lcom/android/launcher2/FolderInfo;>;"
    #v13=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-object v2, v13

    move-object v3, v7

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$7;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1109
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$8;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1117
    invoke-interface {v7}, Lcom/android/launcher2/LauncherModel$Callbacks;->getCurrentWorkspaceScreen()I

    move-result v12

    .line 1118
    .local v12, currentScreen:I
    #v12=(Integer);
    new-instance v11, Ljava/util/ArrayList;

    #v11=(UninitRef);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-direct {v11, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1119
    .local v11, appWidgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/LauncherAppWidgetInfo;>;"
    #v11=(Reference);
    const/4 v4, -0x1

    #v4=(Byte);
    if-eq v12, v4, :cond_4

    .line 1120
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1122
    const/16 v16, 0x0

    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);v19=(Conflicted);
    move/from16 v0, v16

    #v0=(Integer);
    move v1, v10

    #v1=(Integer);
    if-ge v0, v1, :cond_4

    .line 1123
    move-object v0, v11

    #v0=(Reference);
    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    #v19=(Reference);
    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1124
    .local v19, widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide v4, v0

    #v4=(LongLo);v5=(LongHi);
    int-to-long v8, v12

    #v8=(LongLo);v9=(LongHi);
    cmp-long v4, v4, v8

    #v4=(Byte);
    if-nez v4, :cond_3

    .line 1125
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$9;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1122
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 1137
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_4
    #v8=(Conflicted);v9=(Conflicted);v19=(Conflicted);
    const/16 v16, 0x0

    :goto_4
    move/from16 v0, v16

    #v0=(Integer);
    move v1, v10

    #v1=(Integer);
    if-ge v0, v1, :cond_6

    .line 1138
    move-object v0, v11

    #v0=(Reference);
    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    #v19=(Reference);
    check-cast v19, Lcom/android/launcher2/LauncherAppWidgetInfo;

    .line 1139
    .restart local v19       #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->screenId:J

    #v0=(LongLo);v1=(LongHi);
    move-wide v4, v0

    #v4=(LongLo);v5=(LongHi);
    int-to-long v8, v12

    #v8=(LongLo);v9=(LongHi);
    cmp-long v4, v4, v8

    #v4=(Byte);
    if-eqz v4, :cond_5

    .line 1140
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-object/from16 v2, v19

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$10;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1137
    :cond_5
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto :goto_4

    .line 1152
    .end local v19           #widget:Lcom/android/launcher2/LauncherAppWidgetInfo;
    :cond_6
    #v0=(Integer);v1=(Integer);v8=(Conflicted);v9=(Conflicted);v19=(Conflicted);
    new-instance v15, Ljava/util/ArrayList;

    #v15=(UninitRef);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-direct {v15, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1153
    .local v15, gadgetsClone:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/gadget/GadgetInfo;>;"
    #v15=(Reference);
    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v10

    .line 1155
    const/16 v16, 0x0

    :goto_5
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v14=(Conflicted);
    move/from16 v0, v16

    #v0=(Integer);
    move v1, v10

    #v1=(Integer);
    if-ge v0, v1, :cond_8

    .line 1156
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    #v14=(Reference);
    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1157
    .local v14, gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    #v4=(LongLo);v5=(LongHi);
    int-to-long v8, v12

    #v8=(LongLo);v9=(LongHi);
    cmp-long v4, v4, v8

    #v4=(Byte);
    if-nez v4, :cond_7

    .line 1158
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$11;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1155
    :cond_7
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 1169
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_8
    #v0=(Integer);v1=(Integer);v8=(Conflicted);v9=(Conflicted);v14=(Conflicted);
    const/16 v16, 0x0

    :goto_6
    #v0=(Conflicted);v1=(Conflicted);
    move/from16 v0, v16

    #v0=(Integer);
    move v1, v10

    #v1=(Integer);
    if-ge v0, v1, :cond_a

    .line 1170
    invoke-virtual/range {v15 .. v16}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    #v14=(Reference);
    check-cast v14, Lcom/android/launcher2/gadget/GadgetInfo;

    .line 1171
    .restart local v14       #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    iget-wide v4, v14, Lcom/android/launcher2/gadget/GadgetInfo;->screenId:J

    #v4=(LongLo);v5=(LongHi);
    int-to-long v8, v12

    #v8=(LongLo);v9=(LongHi);
    cmp-long v4, v4, v8

    #v4=(Byte);
    if-eqz v4, :cond_9

    .line 1172
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-object v2, v14

    move-object v3, v7

    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$12;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1169
    :cond_9
    #v0=(Conflicted);v1=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    add-int/lit8 v16, v16, 0x1

    goto :goto_6

    .line 1184
    .end local v14           #gadget:Lcom/android/launcher2/gadget/GadgetInfo;
    :cond_a
    #v0=(Integer);v1=(Integer);v8=(Conflicted);v9=(Conflicted);v14=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-object v2, v7

    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$13;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1193
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    #v2=(LongLo);v3=(LongHi);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$14;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private doLoad()V
    .locals 4

    .prologue
    const/16 v2, 0xa

    #v2=(PosByte);
    const-string v3, "Launcher.Model"

    .line 764
    #v3=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 765
    :try_start_0
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    #v1=(Boolean);
    if-eqz v1, :cond_1

    const/4 v1, 0x0

    :goto_0
    #v1=(PosByte);
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 767
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 773
    const-string v0, "Launcher.Model"

    const-string v0, "step 1: loading workspace"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 774
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindWorkspace()V

    .line 777
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 778
    :try_start_1
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 779
    const/16 v1, 0xa

    #v1=(PosByte);
    invoke-static {v1}, Landroid/os/Process;->setThreadPriority(I)V

    .line 781
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 783
    const-string v0, "Launcher.Model"

    const-string v0, "step 2: loading missing icons"

    invoke-static {v3, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 784
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAndBindMissingIcons()V

    .line 786
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 789
    :try_start_2
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v1=(Reference);
    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel$Loader;->access$802(Lcom/android/launcher2/LauncherModel$Loader;Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;

    .line 790
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 798
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v0

    new-instance v1, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;

    #v1=(UninitRef);
    invoke-direct {v1, p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$3;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;)V

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 803
    return-void

    :cond_1
    #v1=(Boolean);v2=(PosByte);
    move v1, v2

    .line 765
    #v1=(PosByte);
    goto :goto_0

    .line 767
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    :try_start_3
    #v1=(Reference);
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v1

    .line 781
    :catchall_1
    #v1=(Conflicted);
    move-exception v1

    :try_start_4
    #v1=(Reference);
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1

    .line 790
    :catchall_2
    #v1=(Conflicted);
    move-exception v1

    :try_start_5
    #v1=(Reference);
    monitor-exit v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    throw v1
.end method

.method private loadAndBindMissingIcons()V
    .locals 20

    .prologue
    .line 636
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v0=(Boolean);
    move/from16 v17, v0

    #v17=(Boolean);
    if-eqz v17, :cond_1

    .line 716
    :cond_0
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    return-void

    .line 640
    :cond_1
    #v0=(Boolean);v1=(Uninit);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Uninit);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Boolean);v18=(Uninit);v19=(Uninit);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v17

    if-eqz v17, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Lcom/android/launcher2/LauncherModel$Callbacks;

    move-object v5, v4

    .line 641
    .local v5, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :goto_1
    #v4=(Conflicted);v5=(Reference);
    if-nez v5, :cond_3

    .line 642
    const-string v17, "Launcher.Model"

    const-string v18, "No callback to call back"

    #v18=(Reference);
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 640
    .end local v5           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_2
    #v4=(Uninit);v5=(Uninit);v18=(Uninit);
    const/16 v17, 0x0

    #v17=(Null);
    move-object/from16 v5, v17

    #v5=(Null);
    goto :goto_1

    .line 647
    .restart local v5       #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :cond_3
    #v4=(Conflicted);v5=(Reference);v17=(Reference);
    new-instance v11, Landroid/content/Intent;

    #v11=(UninitRef);
    const-string v17, "android.intent.action.MAIN"

    const/16 v18, 0x0

    #v18=(Null);
    move-object v0, v11

    #v0=(UninitRef);
    move-object/from16 v1, v17

    #v1=(Reference);
    move-object/from16 v2, v18

    #v2=(Null);
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 648
    .local v11, mainIntent:Landroid/content/Intent;
    #v0=(Reference);v11=(Reference);
    const-string v17, "android.intent.category.LAUNCHER"

    move-object v0, v11

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    move-object/from16 v0, v17

    move-object v1, v11

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v10

    .line 650
    .local v10, list:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    #v10=(Reference);
    if-eqz v10, :cond_4

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v17

    #v17=(Integer);
    if-nez v17, :cond_5

    .line 651
    :cond_4
    #v17=(Conflicted);
    const-string v17, "Launcher.Model"

    #v17=(Reference);
    const-string v18, "No main activity found, the system is so clean"

    #v18=(Reference);
    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 655
    :cond_5
    #v17=(Integer);v18=(Null);
    const/4 v7, 0x0

    .line 656
    .local v7, count:I
    #v7=(Null);
    new-instance v16, Ljava/util/HashSet;

    #v16=(UninitRef);
    invoke-direct/range {v16 .. v16}, Ljava/util/HashSet;-><init>()V

    .line 657
    .local v16, updatedPackages:Ljava/util/HashSet;,"Ljava/util/HashSet<Ljava/lang/String;>;"
    #v16=(Reference);
    invoke-interface {v10}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    .local v9, i$:Ljava/util/Iterator;
    :cond_6
    :goto_2
    #v2=(Reference);v6=(Conflicted);v7=(Integer);v8=(Conflicted);v9=(Reference);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v17=(Conflicted);v18=(Reference);v19=(Conflicted);
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_7

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    #v15=(Reference);
    check-cast v15, Landroid/content/pm/ResolveInfo;

    .line 658
    .local v15, ri:Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v0=(Boolean);
    move/from16 v17, v0

    if-nez v17, :cond_0

    .line 662
    move-object v0, v15

    #v0=(Reference);
    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object v13, v0

    .line 663
    .local v13, packageName:Ljava/lang/String;
    #v13=(Reference);
    move-object v0, v15

    iget-object v0, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object v6, v0

    .line 664
    .local v6, className:Ljava/lang/String;
    #v6=(Reference);
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    #v17=(Boolean);
    if-nez v17, :cond_6

    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 668
    new-instance v12, Landroid/content/ComponentName;

    #v12=(UninitRef);
    invoke-direct {v12, v13, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    .local v12, name:Landroid/content/ComponentName;
    #v12=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object v1, v12

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v17

    #v17=(Boolean);
    if-nez v17, :cond_6

    .line 673
    move-object/from16 v0, v16

    move-object v1, v13

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_6

    .line 677
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    move-object v1, v13

    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherSettings;->updateHomeScreen(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$200(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v17

    monitor-enter v17

    .line 683
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object/from16 v19, v0

    #v19=(Reference);
    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object v2, v13

    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/AllAppsList;->updatePackage(Landroid/content/Context;Ljava/lang/String;)V

    .line 684
    monitor-exit v17
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 686
    add-int/lit8 v7, v7, 0x1

    .line 687
    goto/16 :goto_2

    .line 678
    :catch_0
    #v17=(Conflicted);v19=(Conflicted);
    move-exception v17

    #v17=(Reference);
    move-object/from16 v8, v17

    .line 679
    .local v8, e:Landroid/database/sqlite/SQLiteException;
    #v8=(Reference);
    const-string v17, "Launcher.Model"

    const-string v18, "database didnot ready,ignore this package."

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 684
    .end local v8           #e:Landroid/database/sqlite/SQLiteException;
    :catchall_0
    #v8=(Conflicted);
    move-exception v18

    :try_start_2
    monitor-exit v17
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v18

    .line 689
    .end local v6           #className:Ljava/lang/String;
    .end local v12           #name:Landroid/content/ComponentName;
    .end local v13           #packageName:Ljava/lang/String;
    .end local v15           #ri:Landroid/content/pm/ResolveInfo;
    :cond_7
    #v6=(Conflicted);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v17=(Boolean);
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v0=(Boolean);
    move/from16 v17, v0

    if-nez v17, :cond_8

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    #v17=(Integer);
    if-lez v17, :cond_8

    .line 690
    new-instance v14, Ljava/util/ArrayList;

    #v14=(UninitRef);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object v0, v14

    #v0=(UninitRef);
    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 691
    .local v14, removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    #v0=(Reference);v14=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->removed:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 692
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v17

    new-instance v18, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;

    #v18=(UninitRef);
    move-object/from16 v0, v18

    #v0=(UninitRef);
    move-object/from16 v1, p0

    move-object v2, v14

    move-object v3, v5

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$1;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v18=(Reference);
    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 703
    .end local v14           #removed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/AllAppsList$RemoveInfo;>;"
    :cond_8
    #v0=(Conflicted);v3=(Conflicted);v14=(Conflicted);v17=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v0=(Boolean);
    move/from16 v17, v0

    #v17=(Boolean);
    if-nez v17, :cond_0

    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v17

    #v17=(Integer);
    if-lez v17, :cond_0

    .line 704
    new-instance v4, Ljava/util/ArrayList;

    #v4=(UninitRef);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    move-object v0, v4

    #v0=(UninitRef);
    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 705
    .local v4, added:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/launcher2/ShortcutInfo;>;"
    #v0=(Reference);v4=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$300(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/AllAppsList;

    move-result-object v17

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList;->added:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->clear()V

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v17, v0

    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v17

    new-instance v18, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;

    #v18=(UninitRef);
    move-object/from16 v0, v18

    #v0=(UninitRef);
    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v5

    #v3=(Reference);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$2;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;Ljava/lang/Object;Lcom/android/launcher2/LauncherModel$Callbacks;)V

    #v0=(Reference);v18=(Reference);
    invoke-virtual/range {v17 .. v18}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    goto/16 :goto_0
.end method

.method private loadAndBindWorkspace()V
    .locals 4

    .prologue
    .line 725
    monitor-enter p0

    .line 726
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$600(Lcom/android/launcher2/LauncherModel;)Z

    move-result v0

    .line 727
    .local v0, loaded:Z
    #v0=(Boolean);
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x1

    #v2=(One);
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$602(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 728
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 733
    const-string v1, "Launcher.Model"

    new-instance v2, Ljava/lang/StringBuilder;

    #v2=(UninitRef);
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #v2=(Reference);
    const-string v3, "loadAndBindWorkspace loaded="

    #v3=(Reference);
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 736
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadWorkspace()V

    .line 737
    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v1=(Boolean);
    if-eqz v1, :cond_0

    .line 738
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    const/4 v2, 0x0

    #v2=(Null);
    invoke-static {v1, v2}, Lcom/android/launcher2/LauncherModel;->access$602(Lcom/android/launcher2/LauncherModel;Z)Z

    .line 745
    :goto_0
    #v1=(Conflicted);v2=(Reference);
    return-void

    .line 728
    .end local v0           #loaded:Z
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Uninit);
    move-exception v1

    :try_start_1
    #v1=(Reference);
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1

    .line 744
    .restart local v0       #loaded:Z
    :cond_0
    #v0=(Boolean);v1=(Boolean);v2=(Reference);v3=(Reference);
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->bindWorkspace()V

    goto :goto_0
.end method

.method private loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const-string v9, "Launcher.Model"

    .line 884
    #v9=(Reference);
    const/16 v5, 0x9

    #v5=(PosByte);
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 885
    .local v0, appWidgetId:I
    #v0=(Integer);
    const/4 v5, 0x0

    #v5=(Null);
    invoke-interface {p1, v5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 887
    .local v2, id:J
    #v2=(LongLo);v3=(LongHi);
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    #v5=(Reference);
    invoke-static {v5}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v5

    invoke-virtual {v5, v0}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v4

    .line 890
    .local v4, provider:Landroid/appwidget/AppWidgetProviderInfo;
    #v4=(Reference);
    if-eqz v4, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    if-eqz v5, :cond_0

    iget-object v5, v4, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_2

    .line 892
    :cond_0
    const-string v5, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Deleting widget that isn\'t installed anymore: id="

    #v6=(Reference);
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " appWidgetId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 894
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v5}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v5

    #v5=(Boolean);
    if-nez v5, :cond_1

    .line 895
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {p2, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 910
    :cond_1
    :goto_0
    #v1=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);
    return-void

    .line 898
    :cond_2
    #v1=(Uninit);v5=(Reference);v6=(Uninit);v7=(Uninit);v8=(Uninit);
    new-instance v1, Lcom/android/launcher2/LauncherAppWidgetInfo;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/android/launcher2/LauncherAppWidgetInfo;-><init>(I)V

    .line 899
    .local v1, appWidgetInfo:Lcom/android/launcher2/LauncherAppWidgetInfo;
    #v1=(Reference);
    iput-wide v2, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->id:J

    .line 900
    invoke-virtual {v1, p1}, Lcom/android/launcher2/LauncherAppWidgetInfo;->load(Landroid/database/Cursor;)V

    .line 902
    iget-wide v5, v1, Lcom/android/launcher2/LauncherAppWidgetInfo;->container:J

    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v7, -0x64

    #v7=(LongLo);v8=(LongHi);
    cmp-long v5, v5, v7

    #v5=(Byte);
    if-eqz v5, :cond_3

    .line 903
    const-string v5, "Launcher.Model"

    #v5=(Reference);
    const-string v5, "Widget found where container != CONTAINER_DESKTOP -- ignoring!"

    invoke-static {v9, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 908
    :cond_3
    #v5=(Byte);
    iget-object v5, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 5
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 913
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/16 v4, 0x9

    #v4=(PosByte);
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    .line 914
    .local v0, gadgetId:I
    #v0=(Integer);
    const/4 v4, 0x0

    #v4=(Null);
    invoke-interface {p1, v4}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 915
    .local v2, id:J
    #v2=(LongLo);v3=(LongHi);
    invoke-static {v0}, Lcom/android/launcher2/gadget/GadgetFactory;->getInfo(I)Lcom/android/launcher2/gadget/GadgetInfo;

    move-result-object v4

    #v4=(Reference);
    if-nez v4, :cond_1

    .line 916
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v4}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v4

    #v4=(Boolean);
    if-nez v4, :cond_0

    .line 917
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_0
    :goto_0
    #v1=(Conflicted);v4=(Conflicted);
    return-void

    .line 921
    :cond_1
    #v1=(Uninit);v4=(Reference);
    new-instance v1, Lcom/android/launcher2/gadget/GadgetInfo;

    #v1=(UninitRef);
    invoke-direct {v1, v0}, Lcom/android/launcher2/gadget/GadgetInfo;-><init>(I)V

    .line 922
    .local v1, gadgetInfo:Lcom/android/launcher2/gadget/GadgetInfo;
    #v1=(Reference);
    iput-wide v2, v1, Lcom/android/launcher2/gadget/GadgetInfo;->id:J

    .line 923
    invoke-virtual {v1, p1}, Lcom/android/launcher2/gadget/GadgetInfo;->load(Landroid/database/Cursor;)V

    .line 924
    iget-object v4, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 10
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v2, 0x0

    .line 856
    #v2=(Null);
    invoke-interface {p1, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v6

    .line 857
    .local v6, id:J
    #v6=(LongLo);v7=(LongHi);
    const/16 v0, 0xf

    #v0=(PosByte);
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    #v0=(Reference);
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    .line 860
    .local v9, uri:Landroid/net/Uri;
    #v9=(Reference);
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v9}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v8

    .line 863
    .local v8, providerInfo:Landroid/content/pm/ProviderInfo;
    #v8=(Reference);
    if-nez v8, :cond_0

    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v0}, Landroid/content/pm/PackageManager;->isSafeMode()Z

    move-result v0

    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 864
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    #v0=(Reference);
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 878
    :goto_0
    #v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v5=(Conflicted);
    return-void

    .line 866
    :cond_0
    #v0=(Conflicted);v2=(Null);v3=(Uninit);v4=(Uninit);v5=(Uninit);
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-static {v0, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$1000(Ljava/util/HashMap;J)Lcom/android/launcher2/LiveFolderInfo;

    move-result-object v5

    .line 867
    .local v5, liveFolderInfo:Lcom/android/launcher2/LiveFolderInfo;
    #v5=(Reference);
    iput-object v9, v5, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 868
    invoke-virtual {v5, p1}, Lcom/android/launcher2/LiveFolderInfo;->load(Landroid/database/Cursor;)V

    .line 870
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    const/4 v2, 0x3

    #v2=(PosByte);
    const/4 v3, 0x5

    #v3=(PosByte);
    const/4 v4, 0x6

    #v4=(PosByte);
    move-object v1, p1

    invoke-static/range {v0 .. v5}, Lcom/android/launcher2/LauncherModel;->access$1100(Landroid/content/Context;Landroid/database/Cursor;IIILcom/android/launcher2/LiveFolderInfo;)V

    .line 873
    iget-wide v0, v5, Lcom/android/launcher2/LiveFolderInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    const-wide/16 v2, -0x64

    #v2=(LongLo);v3=(LongHi);
    cmp-long v0, v0, v2

    #v0=(Byte);
    if-nez v0, :cond_1

    .line 874
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 876
    :cond_1
    #v0=(Conflicted);
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v1, v5, Lcom/android/launcher2/LiveFolderInfo;->id:J

    #v1=(LongLo);v2=(LongHi);
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    #v1=(Reference);
    invoke-virtual {v0, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private loadShortcut(Landroid/database/Cursor;I)V
    .locals 22
    .parameter "c"
    .parameter "itemType"

    .prologue
    .line 933
    const/4 v5, 0x1

    #v5=(One);
    move-object/from16 v0, p1

    #v0=(Reference);
    move v1, v5

    #v1=(One);
    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v21

    .line 935
    .local v21, intentDescription:Ljava/lang/String;
    #v21=(Reference);
    const/4 v5, 0x0

    :try_start_0
    #v5=(Null);
    move-object/from16 v0, v21

    move v1, v5

    #v1=(Null);
    invoke-static {v0, v1}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 940
    .local v7, intent:Landroid/content/Intent;
    #v7=(Reference);
    if-nez p2, :cond_2

    .line 941
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mManager:Landroid/content/pm/PackageManager;

    move-object v6, v0

    #v6=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v8, v0

    #v8=(Reference);
    const/4 v10, 0x4

    #v10=(PosByte);
    const/4 v11, 0x2

    #v11=(PosByte);
    move-object/from16 v9, p1

    #v9=(Reference);
    invoke-virtual/range {v5 .. v11}, Lcom/android/launcher2/LauncherModel;->getShortcutInfo(Landroid/content/pm/PackageManager;Landroid/content/Intent;Landroid/content/Context;Landroid/database/Cursor;II)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v20

    .line 943
    .local v20, info:Lcom/android/launcher2/ShortcutInfo;
    #v20=(Reference);
    if-eqz v20, :cond_0

    .line 944
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v7}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    const/4 v8, 0x0

    #v8=(Null);
    move-object/from16 v0, p1

    move v1, v8

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v8

    #v8=(LongLo);v9=(LongHi);
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    #v8=(Reference);
    invoke-virtual {v5, v6, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 951
    :cond_0
    :goto_0
    #v6=(Conflicted);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    if-eqz v20, :cond_4

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v6, v0

    #v6=(Reference);
    const/4 v8, 0x4

    #v8=(PosByte);
    move-object v0, v5

    move-object v1, v6

    #v1=(Reference);
    move-object/from16 v2, v20

    #v2=(Reference);
    move-object/from16 v3, p1

    #v3=(Reference);
    move v4, v8

    #v4=(PosByte);
    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/launcher2/LauncherModel;->updateSavedIcon(Landroid/content/Context;Lcom/android/launcher2/ShortcutInfo;Landroid/database/Cursor;I)V

    .line 953
    move-object v0, v7

    move-object/from16 v1, v20

    iput-object v0, v1, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 954
    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/launcher2/ShortcutInfo;->load(Landroid/database/Cursor;)V

    .line 956
    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v0=(LongLo);v1=(LongHi);
    move-wide v5, v0

    #v5=(LongLo);v6=(LongHi);
    const-wide/16 v7, -0x64

    #v7=(LongLo);v8=(LongHi);
    cmp-long v5, v5, v7

    #v5=(Byte);
    if-eqz v5, :cond_1

    .end local v7           #intent:Landroid/content/Intent;
    move-object/from16 v0, v20

    #v0=(Reference);
    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v0=(LongLo);
    move-wide v5, v0

    #v5=(LongLo);
    const-wide/16 v7, -0x65

    cmp-long v5, v5, v7

    #v5=(Byte);
    if-nez v5, :cond_3

    .line 958
    :cond_1
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    move-object v0, v5

    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 976
    .end local v20           #info:Lcom/android/launcher2/ShortcutInfo;
    :goto_1
    #v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v4=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v11=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);v20=(Conflicted);
    return-void

    .line 936
    :catch_0
    #v1=(Null);v2=(Uninit);v3=(Uninit);v4=(Uninit);v5=(Null);v6=(Uninit);v7=(Uninit);v8=(Uninit);v9=(Uninit);v10=(Uninit);v11=(Uninit);v12=(Uninit);v13=(Uninit);v14=(Uninit);v15=(Uninit);v16=(Uninit);v17=(Uninit);v18=(Uninit);v19=(Uninit);v20=(Uninit);
    move-exception v16

    .line 937
    .local v16, e:Ljava/net/URISyntaxException;
    #v16=(Reference);
    goto :goto_1

    .line 947
    .end local v16           #e:Ljava/net/URISyntaxException;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_2
    #v7=(Reference);v16=(Uninit);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    #v5=(Reference);
    iget-object v8, v5, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    #v8=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    move-object v10, v0

    #v10=(Reference);
    const/4 v11, 0x3

    #v11=(PosByte);
    const/4 v12, 0x5

    #v12=(PosByte);
    const/4 v13, 0x6

    #v13=(PosByte);
    const/4 v14, 0x4

    #v14=(PosByte);
    const/4 v15, 0x2

    #v15=(PosByte);
    move-object/from16 v9, p1

    #v9=(Reference);
    invoke-static/range {v8 .. v15}, Lcom/android/launcher2/LauncherModel;->access$1200(Lcom/android/launcher2/LauncherModel;Landroid/database/Cursor;Landroid/content/Context;IIIII)Lcom/android/launcher2/ShortcutInfo;

    move-result-object v20

    .restart local v20       #info:Lcom/android/launcher2/ShortcutInfo;
    #v20=(Reference);
    goto :goto_0

    .line 961
    .end local v7           #intent:Landroid/content/Intent;
    :cond_3
    #v0=(LongLo);v1=(LongHi);v2=(Reference);v3=(Reference);v4=(PosByte);v5=(Byte);v6=(LongHi);v7=(LongLo);v8=(LongHi);v9=(Conflicted);v10=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v5, v0

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/android/launcher2/ShortcutInfo;->container:J

    #v0=(LongLo);
    move-wide v6, v0

    #v6=(LongLo);v7=(LongHi);
    invoke-static {v5, v6, v7}, Lcom/android/launcher2/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v17

    .line 962
    .local v17, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    #v17=(Reference);
    move-object/from16 v0, v17

    #v0=(Reference);
    move-object/from16 v1, v20

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/UserFolderInfo;->add(Lcom/android/launcher2/ShortcutInfo;)V

    goto :goto_1

    .line 972
    .end local v17           #folderInfo:Lcom/android/launcher2/UserFolderInfo;
    .restart local v7       #intent:Landroid/content/Intent;
    :cond_4
    #v1=(Null);v2=(Uninit);v3=(Uninit);v4=(Uninit);v6=(Conflicted);v7=(Reference);v8=(Reference);v17=(Uninit);
    const/4 v5, 0x0

    #v5=(Null);
    move-object/from16 v0, p1

    move v1, v5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v18

    .line 973
    .local v18, id:J
    #v18=(LongLo);v19=(LongHi);
    const-string v5, "Launcher.Model"

    #v5=(Reference);
    new-instance v6, Ljava/lang/StringBuilder;

    #v6=(UninitRef);
    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    #v6=(Reference);
    const-string v7, "Error loading shortcut "

    .end local v7           #intent:Landroid/content/Intent;
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v0, v6

    move-wide/from16 v1, v18

    #v1=(LongLo);v2=(LongHi);
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", removing it"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 974
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v5, v0

    invoke-static/range {v18 .. v19}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v6

    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    invoke-virtual {v5, v6, v7, v8}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_1
.end method

.method private loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    .locals 7
    .parameter "c"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 843
    .local p2, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    const/4 v3, 0x0

    #v3=(Null);
    invoke-interface {p1, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 844
    .local v1, id:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-static {v3, v1, v2}, Lcom/android/launcher2/LauncherModel;->access$900(Ljava/util/HashMap;J)Lcom/android/launcher2/UserFolderInfo;

    move-result-object v0

    .line 845
    .local v0, folderInfo:Lcom/android/launcher2/UserFolderInfo;
    #v0=(Reference);
    invoke-virtual {v0, p1}, Lcom/android/launcher2/UserFolderInfo;->load(Landroid/database/Cursor;)V

    .line 847
    iget-wide v3, v0, Lcom/android/launcher2/UserFolderInfo;->container:J

    #v3=(LongLo);v4=(LongHi);
    const-wide/16 v5, -0x64

    #v5=(LongLo);v6=(LongHi);
    cmp-long v3, v3, v5

    #v3=(Byte);
    if-eqz v3, :cond_0

    iget-wide v3, v0, Lcom/android/launcher2/UserFolderInfo;->container:J

    #v3=(LongLo);
    const-wide/16 v5, -0x65

    cmp-long v3, v3, v5

    #v3=(Byte);
    if-nez v3, :cond_1

    .line 849
    :cond_0
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 852
    :cond_1
    #v3=(Conflicted);
    iget-object v3, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v3=(Reference);
    iget-object v3, v3, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    iget-wide v4, v0, Lcom/android/launcher2/UserFolderInfo;->id:J

    #v4=(LongLo);v5=(LongHi);
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    #v4=(Reference);
    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 853
    return-void
.end method

.method private loadWorkspace()V
    .locals 20

    .prologue
    .line 979
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v18

    .line 981
    .local v18, t:J
    #v18=(LongLo);v19=(LongHi);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 982
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mAppWidgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 983
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mGadgets:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 984
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mFolders:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 985
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->mLoadedApps:Ljava/util/HashMap;

    invoke-virtual {v4}, Ljava/util/HashMap;->clear()V

    .line 987
    new-instance v17, Ljava/util/ArrayList;

    #v17=(UninitRef);
    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 988
    .local v17, itemsToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Long;>;"
    #v17=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    #v5=(Reference);
    sget-object v6, Lcom/android/launcher2/ItemQuery;->COLUMNS:[Ljava/lang/String;

    #v6=(Reference);
    const/4 v7, 0x0

    #v7=(Null);
    const/4 v8, 0x0

    #v8=(Null);
    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual/range {v4 .. v9}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10

    .line 992
    .local v10, c:Landroid/database/Cursor;
    :goto_0
    :try_start_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v4=(Conflicted);v10=(Reference);v12=(Conflicted);v16=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v0=(Boolean);
    move v4, v0

    #v4=(Boolean);
    if-nez v4, :cond_0

    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    if-eqz v4, :cond_0

    .line 994
    const/16 v4, 0x8

    :try_start_1
    #v4=(PosByte);
    invoke-interface {v10, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v16

    .line 996
    .local v16, itemType:I
    #v16=(Integer);
    packed-switch v16, :pswitch_data_0

    goto :goto_0

    .line 999
    :pswitch_0
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object v1, v10

    #v1=(Reference);
    move/from16 v2, v16

    #v2=(Integer);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadShortcut(Landroid/database/Cursor;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1018
    .end local v16           #itemType:I
    :catch_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v16=(Conflicted);
    move-exception v4

    #v4=(Reference);
    move-object v12, v4

    .line 1019
    .local v12, e:Ljava/lang/Exception;
    :try_start_2
    #v12=(Reference);
    const-string v4, "Launcher.Model"

    const-string v5, "Desktop items loading interrupted:"

    invoke-static {v4, v5, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1023
    .end local v12           #e:Ljava/lang/Exception;
    :catchall_0
    #v4=(Conflicted);v12=(Conflicted);
    move-exception v4

    #v4=(Reference);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    throw v4

    .line 1003
    .restart local v16       #itemType:I
    :pswitch_1
    :try_start_3
    #v0=(Boolean);v4=(PosByte);v16=(Integer);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object v1, v10

    #v1=(Reference);
    move-object/from16 v2, v17

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadUserFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1007
    :pswitch_2
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object v1, v10

    #v1=(Reference);
    move-object/from16 v2, v17

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadLiveFolder(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1011
    :pswitch_3
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object v1, v10

    #v1=(Reference);
    move-object/from16 v2, v17

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadAppWidget(Landroid/database/Cursor;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1015
    :pswitch_4
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    move-object v1, v10

    #v1=(Reference);
    move-object/from16 v2, v17

    #v2=(Reference);
    invoke-direct {v0, v1, v2}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->loadGadget(Landroid/database/Cursor;Ljava/util/ArrayList;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_0

    .line 1023
    .end local v16           #itemType:I
    :cond_0
    #v0=(Boolean);v1=(Conflicted);v2=(Conflicted);v4=(Boolean);v16=(Conflicted);
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    .line 1026
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->size()I

    move-result v4

    #v4=(Integer);
    if-lez v4, :cond_1

    .line 1027
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContentResolver:Landroid/content/ContentResolver;

    move-object v4, v0

    #v4=(Reference);
    sget-object v5, Lcom/android/launcher2/LauncherSettings$Favorites;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5}, Landroid/content/ContentResolver;->acquireContentProviderClient(Landroid/net/Uri;)Landroid/content/ContentProviderClient;

    move-result-object v11

    .line 1030
    .local v11, client:Landroid/content/ContentProviderClient;
    #v11=(Reference);
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, i$:Ljava/util/Iterator;
    :goto_1
    #v13=(Reference);v14=(Conflicted);v15=(Conflicted);
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    #v4=(Boolean);
    if-eqz v4, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    #v4=(Reference);
    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 1032
    .local v14, id:J
    #v14=(LongLo);v15=(LongHi);
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Removed id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1036
    :try_start_4
    invoke-static {v14, v15}, Lcom/android/launcher2/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v4

    const/4 v5, 0x0

    #v5=(Null);
    const/4 v6, 0x0

    #v6=(Null);
    invoke-virtual {v11, v4, v5, v6}, Landroid/content/ContentProviderClient;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1037
    :catch_1
    #v5=(Reference);v6=(Reference);
    move-exception v4

    move-object v12, v4

    .line 1038
    .local v12, e:Landroid/os/RemoteException;
    #v12=(Reference);
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Could not remove id = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1039
    .end local v12           #e:Landroid/os/RemoteException;
    :catch_2
    #v12=(Conflicted);
    move-exception v4

    move-object v12, v4

    .line 1040
    .local v12, e:Landroid/database/sqlite/SQLiteException;
    #v12=(Reference);
    const-string v4, "Launcher.Model"

    new-instance v5, Ljava/lang/StringBuilder;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    #v5=(Reference);
    const-string v6, "Could not remove id(database readonly) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v14, v15}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 1044
    .end local v11           #client:Landroid/content/ContentProviderClient;
    .end local v12           #e:Landroid/database/sqlite/SQLiteException;
    .end local v13           #i$:Ljava/util/Iterator;
    .end local v14           #id:J
    :cond_1
    #v0=(Conflicted);v4=(Integer);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    move-object v4, v0

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v4}, Lcom/android/launcher2/LauncherModel;->access$500(Lcom/android/launcher2/LauncherModel;)Lcom/android/launcher2/DeferredHandler;

    move-result-object v4

    new-instance v5, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;

    #v5=(UninitRef);
    move-object v0, v5

    #v0=(UninitRef);
    move-object/from16 v1, p0

    #v1=(Reference);
    move-wide/from16 v2, v18

    #v2=(LongLo);v3=(LongHi);
    invoke-direct {v0, v1, v2, v3}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread$4;-><init>(Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;J)V

    #v0=(Reference);v5=(Reference);
    invoke-virtual {v4, v5}, Lcom/android/launcher2/DeferredHandler;->post(Ljava/lang/Runnable;)V

    .line 1052
    return-void

    .line 996
    #v0=(Unknown);v1=(Unknown);v2=(Unknown);v3=(Unknown);v4=(Unknown);v5=(Unknown);v6=(Unknown);v7=(Unknown);v8=(Unknown);v9=(Unknown);v10=(Unknown);v11=(Unknown);v12=(Unknown);v13=(Unknown);v14=(Unknown);v15=(Unknown);v16=(Unknown);v17=(Unknown);v18=(Unknown);v19=(Unknown);p0=(Unknown);
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private waitForOtherThread()V
    .locals 2

    .prologue
    .line 621
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    #v1=(Reference);
    if-eqz v1, :cond_1

    .line 622
    const/4 v0, 0x0

    .line 623
    .local v0, done:Z
    :goto_0
    #v0=(Boolean);
    if-nez v0, :cond_0

    .line 625
    :try_start_0
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 626
    const/4 v0, 0x1

    #v0=(One);
    goto :goto_0

    .line 631
    :cond_0
    #v0=(Boolean);
    const/4 v1, 0x0

    #v1=(Null);
    iput-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    .line 633
    .end local v0           #done:Z
    :cond_1
    #v0=(Conflicted);v1=(Reference);
    return-void

    .line 627
    .restart local v0       #done:Z
    :catch_0
    #v0=(Boolean);
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public dumpState()V
    .locals 3

    .prologue
    const-string v2, "Launcher.Model"

    .line 1204
    #v2=(Reference);
    const-string v0, "Launcher.Model"

    #v0=(Reference);
    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mLoader.mLoaderThread.mContext="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1205
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mLoader.mLoaderThread.mWaitThread="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mWaitThread:Ljava/lang/Thread;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1206
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mLoader.mLoaderThread.mIsLaunching="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1207
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mLoader.mLoaderThread.mStopped="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1208
    const-string v0, "Launcher.Model"

    new-instance v0, Ljava/lang/StringBuilder;

    #v0=(UninitRef);
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #v0=(Reference);
    const-string v1, "mLoader.mLoaderThread.mLoadAndBindStepFinished="

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mLoadAndBindStepFinished:Z

    #v1=(Boolean);
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1209
    return-void
.end method

.method isLaunching()Z
    .locals 1

    .prologue
    .line 610
    iget-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mIsLaunching:Z

    #v0=(Boolean);
    return v0
.end method

.method public run()V
    .locals 2

    .prologue
    .line 748
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v0=(Reference);
    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$700(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    .line 749
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    monitor-enter v0

    .line 750
    :try_start_0
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->waitForOtherThread()V

    .line 751
    invoke-direct {p0}, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->doLoad()V

    .line 752
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 753
    iget-object v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    invoke-static {v0}, Lcom/android/launcher2/LauncherModel$Loader;->access$700(Lcom/android/launcher2/LauncherModel$Loader;)Ljava/util/concurrent/atomic/AtomicInteger;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndDecrement()I

    .line 754
    return-void

    .line 752
    :catchall_0
    #v1=(Conflicted);
    move-exception v1

    :try_start_1
    #v1=(Reference);
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public stopLocked()V
    .locals 1

    .prologue
    .line 806
    monitor-enter p0

    .line 807
    const/4 v0, 0x1

    :try_start_0
    #v0=(One);
    iput-boolean v0, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    .line 808
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 809
    monitor-exit p0

    .line 810
    return-void

    .line 809
    :catchall_0
    #v0=(Conflicted);
    move-exception v0

    #v0=(Reference);
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method tryGetCallbacks(Lcom/android/launcher2/LauncherModel$Callbacks;)Lcom/android/launcher2/LauncherModel$Callbacks;
    .locals 5
    .parameter "oldCallbacks"

    .prologue
    const/4 v4, 0x0

    .line 820
    #v4=(Null);
    iget-object v1, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v1=(Reference);
    iget-object v1, v1, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v1}, Lcom/android/launcher2/LauncherModel;->access$000(Lcom/android/launcher2/LauncherModel;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 821
    :try_start_0
    iget-boolean v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->mStopped:Z

    #v2=(Boolean);
    if-eqz v2, :cond_0

    .line 822
    monitor-exit v1

    move-object v1, v4

    .line 838
    :goto_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    return-object v1

    .line 825
    :cond_0
    #v0=(Uninit);v2=(Boolean);v3=(Uninit);
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    #v2=(Reference);
    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    if-nez v2, :cond_1

    .line 826
    monitor-exit v1

    move-object v1, v4

    #v1=(Null);
    goto :goto_0

    .line 829
    :cond_1
    #v1=(Reference);
    iget-object v2, p0, Lcom/android/launcher2/LauncherModel$Loader$LoaderThread;->this$1:Lcom/android/launcher2/LauncherModel$Loader;

    iget-object v2, v2, Lcom/android/launcher2/LauncherModel$Loader;->this$0:Lcom/android/launcher2/LauncherModel;

    invoke-static {v2}, Lcom/android/launcher2/LauncherModel;->access$100(Lcom/android/launcher2/LauncherModel;)Ljava/lang/ref/WeakReference;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherModel$Callbacks;

    .line 830
    .local v0, callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    if-eq v0, p1, :cond_2

    .line 831
    monitor-exit v1

    move-object v1, v4

    #v1=(Null);
    goto :goto_0

    .line 833
    :cond_2
    #v1=(Reference);
    if-nez v0, :cond_3

    .line 834
    const-string v2, "Launcher.Model"

    const-string v3, "no mCallbacks"

    #v3=(Reference);
    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    monitor-exit v1

    move-object v1, v4

    #v1=(Null);
    goto :goto_0

    .line 838
    :cond_3
    #v1=(Reference);v3=(Uninit);
    monitor-exit v1

    move-object v1, v0

    goto :goto_0

    .line 839
    .end local v0           #callbacks:Lcom/android/launcher2/LauncherModel$Callbacks;
    :catchall_0
    #v0=(Conflicted);v2=(Conflicted);v3=(Conflicted);
    move-exception v2

    #v2=(Reference);
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

*/}
