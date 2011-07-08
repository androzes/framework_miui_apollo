package com.android.launcher2; class WorkspaceEditingPreview$1 {/*

.class Lcom/android/launcher2/WorkspaceEditingPreview$1;
.super Ljava/lang/Object;
.source "WorkspaceEditingPreview.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/launcher2/WorkspaceEditingPreview;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/launcher2/WorkspaceEditingPreview;


# direct methods
.method constructor <init>(Lcom/android/launcher2/WorkspaceEditingPreview;)V
    .locals 0
    .parameter

    .prologue
    .line 203
    iput-object p1, p0, Lcom/android/launcher2/WorkspaceEditingPreview$1;->this$0:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #p0=(Reference);
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .parameter "v"

    .prologue
    .line 205
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    #v2=(Reference);
    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 206
    .local v0, screenId:J
    #v0=(LongLo);v1=(LongHi);
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceEditingPreview$1;->this$0:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-static {v2}, Lcom/android/launcher2/WorkspaceEditingPreview;->access$000(Lcom/android/launcher2/WorkspaceEditingPreview;)Lcom/android/launcher2/Launcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/launcher2/Launcher;->getWorkspace()Lcom/android/launcher2/Workspace;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Lcom/android/launcher2/Workspace;->setCurrentScreenById(J)V

    .line 207
    iget-object v2, p0, Lcom/android/launcher2/WorkspaceEditingPreview$1;->this$0:Lcom/android/launcher2/WorkspaceEditingPreview;

    invoke-static {v2}, Lcom/android/launcher2/WorkspaceEditingPreview;->access$000(Lcom/android/launcher2/WorkspaceEditingPreview;)Lcom/android/launcher2/Launcher;

    move-result-object v2

    const/4 v3, 0x0

    #v3=(Null);
    invoke-virtual {v2, v3}, Lcom/android/launcher2/Launcher;->setEditingState(I)V

    .line 208
    return-void
.end method

*/}
