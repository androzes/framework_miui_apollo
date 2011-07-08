.class Lcom/nemustech/tiffany/world/TFEffect$5$1;
.super Ljava/lang/Object;
.source "TFEffect.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/TFEffect$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/nemustech/tiffany/world/TFEffect$5;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFEffect$5;)V
    .locals 0
    .parameter

    .prologue
    .line 617
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 618
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFEffect;->access$1600(Lcom/nemustech/tiffany/world/TFEffect;)J

    move-result-wide v4

    sub-long v0, v2, v4

    .line 619
    .local v0, duration:J
    const-string v2, "TFEffect"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "showEffect preparation finished taking "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " !!!!!!!!!!!!!!!!!!!!"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$200(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 622
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$200(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffect;->access$000(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v3

    iget-object v4, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v4, v4, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v4}, Lcom/nemustech/tiffany/world/TFEffect;->access$100(Lcom/nemustech/tiffany/world/TFEffect;)Z

    move-result v4

    invoke-interface {v2, v3, v4}, Lcom/nemustech/tiffany/world/TFEffect$AnimationEventListener;->onAnimationStart(IZ)V

    .line 624
    :cond_0
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffect;->access$400(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v3

    aget-object v2, v2, v3

    if-eqz v2, :cond_1

    .line 625
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v2

    iget-object v3, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v3, v3, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v3}, Lcom/nemustech/tiffany/world/TFEffect;->access$400(Lcom/nemustech/tiffany/world/TFEffect;)I

    move-result v3

    aget-object v2, v2, v3

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 627
    :cond_1
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$1700(Lcom/nemustech/tiffany/world/TFEffect;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 629
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v6

    if-eqz v2, :cond_2

    .line 631
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v6

    invoke-virtual {v2}, Landroid/view/View;->bringToFront()V

    .line 632
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$300(Lcom/nemustech/tiffany/world/TFEffect;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, v6

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 635
    :cond_2
    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFEffect$5$1;->this$1:Lcom/nemustech/tiffany/world/TFEffect$5;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/TFEffect$5;->this$0:Lcom/nemustech/tiffany/world/TFEffect;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFEffect;->access$700(Lcom/nemustech/tiffany/world/TFEffect;)Lcom/nemustech/tiffany/world/TFView;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/nemustech/tiffany/world/TFView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 636
    return-void
.end method
