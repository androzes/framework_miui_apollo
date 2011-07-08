package com.android.launcher2; class Workspace$2 {/*

.class Lcom/android/launcher2/Workspace$2;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/launcher2/Workspace;->removeItems(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/Workspace;

.field final synthetic val$layout:Lcom/android/launcher2/CellLayout;

.field final synthetic val$manager:Landroid/content/pm/PackageManager;

.field final synthetic val$packages:Ljava/util/ArrayList;

.field final synthetic val$widgets:Landroid/appwidget/AppWidgetManager;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace;Lcom/android/launcher2/CellLayout;Ljava/util/ArrayList;Landroid/content/pm/PackageManager;Landroid/appwidget/AppWidgetManager;)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 769
    iput-object p1, p0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    iput-object p2, p0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    iput-object p3, p0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    iput-object p4, p0, Lcom/android/launcher2/Workspace$2;->val$manager:Landroid/content/pm/PackageManager;

    iput-object p5, p0, Lcom/android/launcher2/Workspace$2;->val$widgets:Landroid/appwidget/AppWidgetManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public run()V
    .locals 20

    .prologue
    .line 771
    new-instance v5, Ljava/util/ArrayList;

    #v5=(UninitRef);
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 773
    .local v5, childrenToRemove:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/view/View;>;"
    #v5=(Reference);
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->getChildCount()I

    move-result v4

    .line 774
    .local v4, childCount:I
    #v4=(Integer);
    const/4 v9, 0x0

    .local v9, j:I
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Integer);v10=(Conflicted);v11=(Conflicted);v12=(Conflicted);v13=(Conflicted);v14=(Conflicted);v15=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);v19=(Conflicted);
    if-ge v9, v4, :cond_8

    .line 775
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    move v1, v9

    #v1=(Integer);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v16

    .line 776
    .local v16, view:Landroid/view/View;
    #v16=(Reference);
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    .line 778
    .local v14, tag:Ljava/lang/Object;
    #v14=(Reference);
    move-object v0, v14

    instance-of v0, v0, Lcom/android/launcher2/ShortcutInfo;

    #v0=(Boolean);
    move/from16 v17, v0

    #v17=(Boolean);
    if-eqz v17, :cond_2

    .line 779
    move-object v0, v14

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/ShortcutInfo;

    move-object v7, v0

    .line 780
    .local v7, info:Lcom/android/launcher2/ShortcutInfo;
    #v7=(Reference);
    iget-object v8, v7, Lcom/android/launcher2/ShortcutInfo;->intent:Landroid/content/Intent;

    .line 781
    .local v8, intent:Landroid/content/Intent;
    #v8=(Reference);
    invoke-virtual {v8}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v10

    .line 783
    .local v10, name:Landroid/content/ComponentName;
    #v10=(Reference);
    if-eqz v10, :cond_3

    .line 784
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_0
    :goto_1
    #v1=(Conflicted);v6=(Reference);v17=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 785
    .local v13, ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object v0, v13

    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual {v10}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    #v18=(Reference);
    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_0

    .line 787
    move-object v0, v7

    iget v0, v0, Lcom/android/launcher2/ShortcutInfo;->itemType:I

    #v0=(Integer);
    move/from16 v17, v0

    #v17=(Integer);
    if-eqz v17, :cond_1

    .line 789
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 791
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v17=(Conflicted);
    move-object v0, v5

    #v0=(Reference);
    move-object/from16 v1, v16

    #v1=(Reference);
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 795
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/launcher2/ShortcutInfo;
    .end local v8           #intent:Landroid/content/Intent;
    .end local v10           #name:Landroid/content/ComponentName;
    .end local v13           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    :cond_2
    #v0=(Boolean);v1=(Integer);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v10=(Conflicted);v13=(Conflicted);v17=(Boolean);v18=(Conflicted);
    move-object v0, v14

    #v0=(Reference);
    instance-of v0, v0, Lcom/android/launcher2/UserFolderInfo;

    #v0=(Boolean);
    move/from16 v17, v0

    if-eqz v17, :cond_4

    .line 796
    move-object v0, v14

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/UserFolderInfo;

    move-object v7, v0

    .line 797
    .local v7, info:Lcom/android/launcher2/UserFolderInfo;
    #v7=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v18, v0

    #v18=(Reference);
    invoke-static/range {v18 .. v18}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v18

    move-object v0, v7

    move-object/from16 v1, v17

    #v1=(Reference);
    move-object/from16 v2, v18

    #v2=(Reference);
    invoke-virtual {v0, v1, v2}, Lcom/android/launcher2/UserFolderInfo;->removeItems(Ljava/util/ArrayList;Lcom/android/launcher2/Launcher;)V

    .line 774
    .end local v7           #info:Lcom/android/launcher2/UserFolderInfo;
    :cond_3
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v7=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 798
    :cond_4
    #v0=(Boolean);v1=(Integer);v17=(Boolean);
    move-object v0, v14

    #v0=(Reference);
    instance-of v0, v0, Lcom/android/launcher2/LiveFolderInfo;

    #v0=(Boolean);
    move/from16 v17, v0

    if-eqz v17, :cond_6

    .line 799
    move-object v0, v14

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LiveFolderInfo;

    move-object v7, v0

    .line 800
    .local v7, info:Lcom/android/launcher2/LiveFolderInfo;
    #v7=(Reference);
    iget-object v15, v7, Lcom/android/launcher2/LiveFolderInfo;->uri:Landroid/net/Uri;

    .line 801
    .local v15, uri:Landroid/net/Uri;
    #v15=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$manager:Landroid/content/pm/PackageManager;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual {v15}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    move-result-object v18

    #v18=(Reference);
    const/16 v19, 0x0

    #v19=(Null);
    invoke-virtual/range {v17 .. v19}, Landroid/content/pm/PackageManager;->resolveContentProvider(Ljava/lang/String;I)Landroid/content/pm/ProviderInfo;

    move-result-object v12

    .line 804
    .local v12, providerInfo:Landroid/content/pm/ProviderInfo;
    #v12=(Reference);
    if-eqz v12, :cond_3

    .line 805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_5
    :goto_2
    #v0=(Conflicted);v1=(Conflicted);v6=(Reference);v17=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 806
    .restart local v13       #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object v0, v13

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->replacing:Z

    #v0=(Boolean);
    move/from16 v17, v0

    if-nez v17, :cond_5

    move-object v0, v13

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object v0, v12

    iget-object v0, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_5

    .line 808
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 809
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 813
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/launcher2/LiveFolderInfo;
    .end local v12           #providerInfo:Landroid/content/pm/ProviderInfo;
    .end local v13           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    .end local v15           #uri:Landroid/net/Uri;
    :cond_6
    #v0=(Boolean);v1=(Integer);v6=(Conflicted);v7=(Conflicted);v12=(Conflicted);v13=(Conflicted);v15=(Conflicted);v17=(Boolean);v18=(Conflicted);v19=(Conflicted);
    move-object v0, v14

    #v0=(Reference);
    instance-of v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    #v0=(Boolean);
    move/from16 v17, v0

    if-eqz v17, :cond_3

    .line 814
    move-object v0, v14

    #v0=(Reference);
    check-cast v0, Lcom/android/launcher2/LauncherAppWidgetInfo;

    move-object v7, v0

    .line 815
    .local v7, info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    #v7=(Reference);
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$widgets:Landroid/appwidget/AppWidgetManager;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object v0, v7

    iget v0, v0, Lcom/android/launcher2/LauncherAppWidgetInfo;->appWidgetId:I

    #v0=(Integer);
    move/from16 v18, v0

    #v18=(Integer);
    invoke-virtual/range {v17 .. v18}, Landroid/appwidget/AppWidgetManager;->getAppWidgetInfo(I)Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v11

    .line 817
    .local v11, provider:Landroid/appwidget/AppWidgetProviderInfo;
    #v11=(Reference);
    if-eqz v11, :cond_3

    .line 818
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$packages:Ljava/util/ArrayList;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .restart local v6       #i$:Ljava/util/Iterator;
    :cond_7
    :goto_3
    #v0=(Conflicted);v1=(Conflicted);v6=(Reference);v17=(Conflicted);v18=(Conflicted);
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    #v13=(Reference);
    check-cast v13, Lcom/android/launcher2/AllAppsList$RemoveInfo;

    .line 819
    .restart local v13       #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    move-object v0, v13

    #v0=(Reference);
    iget-boolean v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->replacing:Z

    #v0=(Boolean);
    move/from16 v17, v0

    if-nez v17, :cond_7

    move-object v0, v13

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/AllAppsList$RemoveInfo;->packageName:Ljava/lang/String;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object v0, v11

    iget-object v0, v0, Landroid/appwidget/AppWidgetProviderInfo;->provider:Landroid/content/ComponentName;

    move-object/from16 v18, v0

    #v18=(Reference);
    invoke-virtual/range {v18 .. v18}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    #v17=(Boolean);
    if-eqz v17, :cond_7

    .line 821
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$100(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/Launcher;

    move-result-object v17

    move-object/from16 v0, v17

    move-object v1, v7

    #v1=(Reference);
    invoke-static {v0, v1}, Lcom/android/launcher2/LauncherModel;->deleteItemFromDatabase(Landroid/content/Context;Lcom/android/launcher2/ItemInfo;)Z

    .line 822
    move-object v0, v5

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 829
    .end local v6           #i$:Ljava/util/Iterator;
    .end local v7           #info:Lcom/android/launcher2/LauncherAppWidgetInfo;
    .end local v11           #provider:Landroid/appwidget/AppWidgetProviderInfo;
    .end local v13           #ri:Lcom/android/launcher2/AllAppsList$RemoveInfo;
    .end local v14           #tag:Ljava/lang/Object;
    .end local v16           #view:Landroid/view/View;
    :cond_8
    #v0=(Conflicted);v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);v11=(Conflicted);v13=(Conflicted);v14=(Conflicted);v16=(Conflicted);v17=(Conflicted);v18=(Conflicted);
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 830
    const/4 v9, 0x0

    :goto_4
    #v3=(Conflicted);
    if-ge v9, v4, :cond_a

    .line 831
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    #v3=(Reference);
    check-cast v3, Landroid/view/View;

    .line 832
    .local v3, child:Landroid/view/View;
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    #v17=(Reference);
    move-object/from16 v0, v17

    move-object v1, v3

    #v1=(Reference);
    invoke-virtual {v0, v1}, Lcom/android/launcher2/CellLayout;->removeViewInLayout(Landroid/view/View;)V

    .line 833
    move-object v0, v3

    instance-of v0, v0, Lcom/android/launcher2/DropTarget;

    #v0=(Boolean);
    move/from16 v17, v0

    #v17=(Boolean);
    if-eqz v17, :cond_9

    .line 834
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->this$0:Lcom/android/launcher2/Workspace;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-static/range {v17 .. v17}, Lcom/android/launcher2/Workspace;->access$200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/DragController;

    move-result-object v17

    check-cast v3, Lcom/android/launcher2/DropTarget;

    .end local v3           #child:Landroid/view/View;
    move-object/from16 v0, v17

    move-object v1, v3

    invoke-virtual {v0, v1}, Lcom/android/launcher2/DragController;->removeDropTarget(Lcom/android/launcher2/DropTarget;)V

    .line 830
    :cond_9
    #v0=(Conflicted);v17=(Conflicted);
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .line 838
    :cond_a
    #v1=(Conflicted);v3=(Conflicted);
    if-lez v4, :cond_b

    .line 839
    move-object/from16 v0, p0

    #v0=(Reference);
    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    #v17=(Reference);
    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->requestLayout()V

    .line 840
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/launcher2/Workspace$2;->val$layout:Lcom/android/launcher2/CellLayout;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/android/launcher2/CellLayout;->invalidate()V

    .line 842
    :cond_b
    #v0=(Conflicted);v17=(Conflicted);
    return-void
.end method

*/}
