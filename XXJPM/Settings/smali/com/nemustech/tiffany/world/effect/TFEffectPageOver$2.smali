.class Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;
.super Ljava/lang/Object;
.source "TFEffectPageOver.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->OnPrepareEffect()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)V
    .locals 0
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 123
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    iget-object v1, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v1}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$000(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/graphics/Bitmap;

    move-result-object v1

    aget-object v1, v1, v2

    invoke-virtual {v0, v2, v1}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$100(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/graphics/Bitmap;

    move-result-object v0

    aget-object v0, v0, v2

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 126
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    invoke-static {v0}, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->access$200(Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;)[Landroid/graphics/Bitmap;

    move-result-object v0

    const/4 v1, 0x0

    aput-object v1, v0, v2

    .line 129
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mBackImage:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_1

    .line 131
    iget-object v0, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v0, v0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mPage:Lcom/nemustech/tiffany/world/TFPagePanel;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver$2;->this$0:Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;

    iget-object v2, v2, Lcom/nemustech/tiffany/world/effect/TFEffectPageOver;->mBackImage:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1, v2}, Lcom/nemustech/tiffany/world/TFPagePanel;->setImageResource(ILandroid/graphics/Bitmap;)Z

    .line 133
    :cond_1
    return-void
.end method
