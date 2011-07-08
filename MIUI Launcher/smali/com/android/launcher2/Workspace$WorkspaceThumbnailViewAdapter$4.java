package com.android.launcher2; class Workspace$WorkspaceThumbnailViewAdapter$4 {/*

.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;
.super Ljava/lang/Object;
.source "Workspace.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;


# direct methods
.method constructor <init>(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)V
    .locals 0
    .parameter

    .prologue
    .line 1158
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 10
    .parameter "v"

    .prologue
    const-wide/16 v8, 0x0

    .line 1160
    #v8=(LongLo);v9=(LongHi);
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v6

    #v6=(Reference);
    check-cast v6, Ljava/lang/Long;

    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    .line 1161
    .local v3, screenId:J
    #v3=(LongLo);v4=(LongHi);
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/launcher2/WorkspaceThumbnailView;->getCurrentScreen()Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/launcher2/ThumbnailScreen;

    invoke-virtual {v6}, Lcom/android/launcher2/ThumbnailScreen;->isMovingAnimationStarted()Z

    move-result v6

    #v6=(Boolean);
    if-eqz v6, :cond_0

    .line 1188
    :goto_0
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v5=(Conflicted);v6=(Conflicted);v7=(Conflicted);v8=(Conflicted);v9=(Conflicted);
    return-void

    .line 1165
    :cond_0
    #v0=(Uninit);v1=(Uninit);v2=(Uninit);v5=(Uninit);v6=(Boolean);v7=(Uninit);v8=(LongLo);v9=(LongHi);
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)Landroid/util/LongSparseArray;

    move-result-object v6

    invoke-virtual {v6, v3, v4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1166
    .local v5, screenPosition:I
    #v5=(Integer);
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)[I

    move-result-object v6

    if-eqz v6, :cond_1

    .line 1167
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)[I

    move-result-object v6

    array-length v6, v6

    #v6=(Integer);
    const/4 v7, 0x1

    #v7=(One);
    sub-int v1, v6, v7

    .local v1, i:I
    :goto_1
    #v1=(Integer);
    if-ltz v1, :cond_1

    .line 1168
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1300(Lcom/android/launcher2/Workspace;)[I

    move-result-object v6

    aget v6, v6, v1

    #v6=(Integer);
    if-ne v5, v6, :cond_3

    .line 1169
    move v5, v1

    .line 1175
    .end local v1           #i:I
    :cond_1
    #v1=(Conflicted);v6=(Conflicted);v7=(Conflicted);
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$800(Lcom/android/launcher2/Workspace;)J

    move-result-wide v6

    #v6=(LongLo);v7=(LongHi);
    cmp-long v6, v6, v3

    #v6=(Byte);
    if-nez v6, :cond_2

    .line 1176
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6, v8, v9}, Lcom/android/launcher2/Workspace;->access$802(Lcom/android/launcher2/Workspace;J)J

    .line 1177
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v6}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1178
    .local v2, pref:Landroid/content/SharedPreferences;
    #v2=(Reference);
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1179
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference);
    const-string v6, "pref_default_screen"

    invoke-interface {v0, v6, v8, v9}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1180
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1183
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v2           #pref:Landroid/content/SharedPreferences;
    :cond_2
    #v0=(Conflicted);v2=(Conflicted);v6=(Conflicted);
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v6=(Reference);
    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)Landroid/content/ContentResolver;

    move-result-object v6

    sget-object v7, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    #v7=(Reference);
    new-instance v8, Ljava/lang/StringBuilder;

    #v8=(UninitRef);
    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    #v8=(Reference);
    const-string v9, "_id="

    #v9=(Reference);
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    #v9=(Null);
    invoke-virtual {v6, v7, v8, v9}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1184
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace;->reorderScreens()V

    .line 1185
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-virtual {v6}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1187
    iget-object v6, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$4;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v6, v6, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v6}, Lcom/android/launcher2/Workspace;->access$1200(Lcom/android/launcher2/Workspace;)Lcom/android/launcher2/WorkspaceThumbnailView;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/android/launcher2/WorkspaceThumbnailView;->startDeletedAnimation(I)V

    goto/16 :goto_0

    .line 1167
    .restart local v1       #i:I
    :cond_3
    #v0=(Uninit);v1=(Integer);v2=(Uninit);v6=(Integer);v7=(One);v8=(LongLo);v9=(LongHi);
    add-int/lit8 v1, v1, -0x1

    goto :goto_1
.end method

*/}
