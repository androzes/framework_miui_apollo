package com.android.launcher2; class Workspace$WorkspaceThumbnailViewAdapter$3 {/*

.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;
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
    .line 1140
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 1143
    new-instance v3, Landroid/content/ContentValues;

    #v3=(UninitRef);
    invoke-direct {v3}, Landroid/content/ContentValues;-><init>()V

    .line 1144
    .local v3, values:Landroid/content/ContentValues;
    #v3=(Reference);
    const-string v4, "screenOrder"

    #v4=(Reference);
    iget-object v5, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v5=(Reference);
    iget-object v5, v5, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v5}, Lcom/android/launcher2/Workspace;->getScreenCount()I

    move-result v5

    #v5=(Integer);
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    #v5=(Reference);
    invoke-virtual {v3, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 1145
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$900(Lcom/android/launcher2/Workspace;)Landroid/content/ContentResolver;

    move-result-object v4

    sget-object v5, Lcom/android/launcher2/LauncherSettings$Screens;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v4, v5, v3}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    .line 1147
    .local v1, newScreen:Landroid/net/Uri;
    #v1=(Reference);
    invoke-virtual {v1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    .line 1148
    .local v2, screenId:Ljava/lang/Long;
    #v2=(Reference);
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    #v4=(Integer);
    add-int/lit8 v0, v4, 0x1

    .line 1149
    .local v0, count:I
    #v0=(Integer);
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v4=(Reference);
    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1000(Lcom/android/launcher2/Workspace;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1150
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4}, Lcom/android/launcher2/Workspace;->access$1100(Lcom/android/launcher2/Workspace;)Landroid/util/LongSparseArray;

    move-result-object v4

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    #v5=(LongLo);v6=(LongHi);
    const/4 v7, 0x1

    #v7=(One);
    sub-int v7, v0, v7

    #v7=(Integer);
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    #v7=(Reference);
    invoke-virtual {v4, v5, v6, v7}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 1153
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace;->reorderScreens()V

    .line 1154
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$3;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-virtual {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->notifyDataSetChanged()V

    .line 1155
    return-void
.end method

*/}
