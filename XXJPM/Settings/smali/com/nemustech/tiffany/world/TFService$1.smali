.class Lcom/nemustech/tiffany/world/TFService$1;
.super Landroid/os/Handler;
.source "TFService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/world/TFService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/TFService;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/TFService;)V
    .locals 0
    .parameter

    .prologue
    .line 23
    iput-object p1, p0, Lcom/nemustech/tiffany/world/TFService$1;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 24
    iget v1, p1, Landroid/os/Message;->what:I

    packed-switch v1, :pswitch_data_0

    .line 44
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 27
    :pswitch_0
    iget-object v1, p0, Lcom/nemustech/tiffany/world/TFService$1;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/TFService;->access$000(Lcom/nemustech/tiffany/world/TFService;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/TFService$1;->this$0:Lcom/nemustech/tiffany/world/TFService;

    invoke-static {v2}, Lcom/nemustech/tiffany/world/TFService;->access$100(Lcom/nemustech/tiffany/world/TFService;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/nemustech/tiffany/world/TFUtils;->loadBitmapFromFile(Ljava/lang/String;Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 28
    .local v0, bmp:Landroid/graphics/Bitmap;
    if-eqz v0, :cond_0

    .line 29
    invoke-static {}, Lcom/nemustech/tiffany/world/TFService;->access$200()Landroid/widget/ImageView;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v2, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 35
    .end local v0           #bmp:Landroid/graphics/Bitmap;
    :pswitch_1
    invoke-static {}, Lcom/nemustech/tiffany/world/TFService;->access$200()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 40
    :pswitch_2
    invoke-static {}, Lcom/nemustech/tiffany/world/TFService;->access$200()Landroid/widget/ImageView;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 24
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
