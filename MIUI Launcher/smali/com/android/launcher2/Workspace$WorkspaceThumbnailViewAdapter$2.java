package com.android.launcher2; class Workspace$WorkspaceThumbnailViewAdapter$2 {/*

.class Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;
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
    .line 1118
    iput-object p1, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .parameter "v"

    .prologue
    .line 1120
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    #v4=(Reference);
    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    if-eq v4, p1, :cond_1

    .line 1121
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    .line 1122
    .local v1, newDefaultScreenId:J
    #v1=(LongLo);v2=(LongHi);
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->this$0:Lcom/android/launcher2/Workspace;

    invoke-static {v4, v1, v2}, Lcom/android/launcher2/Workspace;->access$802(Lcom/android/launcher2/Workspace;J)J

    .line 1125
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    iget-object v4, v4, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1126
    .local v3, pref:Landroid/content/SharedPreferences;
    #v3=(Reference);
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1127
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    #v0=(Reference);
    const-string v4, "pref_default_screen"

    invoke-interface {v0, v4, v1, v2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1128
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1131
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1132
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f020039

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1134
    :cond_0
    #v5=(Conflicted);
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    check-cast p1, Landroid/widget/ImageView;

    .end local p1
    invoke-static {v4, p1}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$702(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;Landroid/widget/ImageView;)Landroid/widget/ImageView;

    .line 1135
    iget-object v4, p0, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter$2;->this$1:Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;

    invoke-static {v4}, Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;->access$700(Lcom/android/launcher2/Workspace$WorkspaceThumbnailViewAdapter;)Landroid/widget/ImageView;

    move-result-object v4

    const v5, 0x7f02003a

    #v5=(Integer);
    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 1137
    .end local v0           #editor:Landroid/content/SharedPreferences$Editor;
    .end local v1           #newDefaultScreenId:J
    .end local v3           #pref:Landroid/content/SharedPreferences;
    :cond_1
    #v0=(Conflicted);v1=(Conflicted);v2=(Conflicted);v3=(Conflicted);v5=(Conflicted);
    return-void
.end method

*/}
