.class Lcom/android/internal/widget/SlidingPanel$4;
.super Landroid/content/BroadcastReceiver;
.source "SlidingPanel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/SlidingPanel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/SlidingPanel;


# direct methods
.method constructor <init>(Lcom/android/internal/widget/SlidingPanel;)V
    .locals 0
    .parameter

    .prologue
    .line 1002
    iput-object p1, p0, Lcom/android/internal/widget/SlidingPanel$4;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .parameter "context"
    .parameter "intent"

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1004
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1005
    .local v0, action:Ljava/lang/String;
    const-string v3, "lockscreen.action.SONG_METADATA_UPDATED"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1006
    const-string v3, "lockscreen.extra.TITLE"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1007
    .local v2, title:Ljava/lang/String;
    const-string v3, "lockscreen.extra.ARTIST"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, artist:Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1010
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel$4;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v3}, Lcom/android/internal/widget/SlidingPanel;->access$1000(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/TextView;

    move-result-object v3

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1027
    .end local v1           #artist:Ljava/lang/String;
    .end local v2           #title:Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 1013
    .restart local v1       #artist:Ljava/lang/String;
    .restart local v2       #title:Ljava/lang/String;
    :cond_1
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1014
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel$4;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v3}, Lcom/android/internal/widget/SlidingPanel;->access$1000(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1023
    :goto_1
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel$4;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v3}, Lcom/android/internal/widget/SlidingPanel;->access$1000(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1024
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel$4;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v3}, Lcom/android/internal/widget/SlidingPanel;->access$1000(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setSelected(Z)V

    goto :goto_0

    .line 1016
    :cond_2
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1017
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel$4;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v3}, Lcom/android/internal/widget/SlidingPanel;->access$1000(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/TextView;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 1020
    :cond_3
    iget-object v3, p0, Lcom/android/internal/widget/SlidingPanel$4;->this$0:Lcom/android/internal/widget/SlidingPanel;

    invoke-static {v3}, Lcom/android/internal/widget/SlidingPanel;->access$1000(Lcom/android/internal/widget/SlidingPanel;)Landroid/widget/TextView;

    move-result-object v3

    const-string v4, "%s   %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v6

    aput-object v1, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method
