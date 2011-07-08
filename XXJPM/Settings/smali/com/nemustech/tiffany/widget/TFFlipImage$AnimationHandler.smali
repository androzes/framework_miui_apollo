.class Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;
.super Landroid/os/Handler;
.source "TFFlipImage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFFlipImage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimationHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;


# direct methods
.method private constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;)V
    .locals 0
    .parameter

    .prologue
    .line 524
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/nemustech/tiffany/widget/TFFlipImage;Lcom/nemustech/tiffany/widget/TFFlipImage$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 524
    invoke-direct {p0, p1}, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;-><init>(Lcom/nemustech/tiffany/widget/TFFlipImage;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .parameter "msg"

    .prologue
    .line 527
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 546
    :goto_0
    return-void

    .line 529
    :pswitch_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$300(Lcom/nemustech/tiffany/widget/TFFlipImage;)V

    .line 530
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$402(Lcom/nemustech/tiffany/widget/TFFlipImage;I)I

    goto :goto_0

    .line 534
    :pswitch_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$500(Lcom/nemustech/tiffany/widget/TFFlipImage;)V

    .line 535
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFFlipImage;->access$402(Lcom/nemustech/tiffany/widget/TFFlipImage;I)I

    goto :goto_0

    .line 539
    :pswitch_2
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->flipToNext()V

    goto :goto_0

    .line 543
    :pswitch_3
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFFlipImage$AnimationHandler;->this$0:Lcom/nemustech/tiffany/widget/TFFlipImage;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFFlipImage;->flipToPrev()V

    goto :goto_0

    .line 527
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
