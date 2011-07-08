.class Lcom/android/server/status/IconMerger$1;
.super Ljava/lang/Object;
.source "IconMerger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/IconMerger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/IconMerger;


# direct methods
.method constructor <init>(Lcom/android/server/status/IconMerger;)V
    .locals 0
    .parameter

    .prologue
    .line 128
    iput-object p1, p0, Lcom/android/server/status/IconMerger$1;->this$0:Lcom/android/server/status/IconMerger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/server/status/IconMerger$1;->this$0:Lcom/android/server/status/IconMerger;

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->moreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v1, p0, Lcom/android/server/status/IconMerger$1;->this$0:Lcom/android/server/status/IconMerger;

    invoke-static {v1}, Lcom/android/server/status/IconMerger;->access$000(Lcom/android/server/status/IconMerger;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/status/StatusBarIcon;->update(I)V

    .line 130
    iget-object v0, p0, Lcom/android/server/status/IconMerger$1;->this$0:Lcom/android/server/status/IconMerger;

    iget-object v0, v0, Lcom/android/server/status/IconMerger;->moreIcon:Lcom/android/server/status/StatusBarIcon;

    iget-object v0, v0, Lcom/android/server/status/StatusBarIcon;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 131
    return-void
.end method
