.class Lcom/android/server/status/Ticker$1;
.super Ljava/lang/Object;
.source "Ticker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/status/Ticker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/status/Ticker;


# direct methods
.method constructor <init>(Lcom/android/server/status/Ticker;)V
    .locals 0
    .parameter

    .prologue
    .line 212
    iput-object p1, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 213
    :goto_0
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_2

    .line 214
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/status/Ticker$Segment;

    .line 216
    .local v0, seg:Lcom/android/server/status/Ticker$Segment;
    iget-boolean v2, v0, Lcom/android/server/status/Ticker$Segment;->first:Z

    if-eqz v2, :cond_0

    .line 220
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$300(Lcom/android/server/status/Ticker;)Landroid/widget/ImageSwitcher;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/status/Ticker$Segment;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v3}, Landroid/widget/ImageSwitcher;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 222
    :cond_0
    invoke-virtual {v0}, Lcom/android/server/status/Ticker$Segment;->advance()Ljava/lang/CharSequence;

    move-result-object v1

    .line 223
    .local v1, text:Ljava/lang/CharSequence;
    if-nez v1, :cond_1

    .line 224
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 227
    :cond_1
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$000(Lcom/android/server/status/Ticker;)Landroid/widget/TextSwitcher;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/TextSwitcher;->setText(Ljava/lang/CharSequence;)V

    .line 229
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$400(Lcom/android/server/status/Ticker;)V

    .line 232
    .end local v0           #seg:Lcom/android/server/status/Ticker$Segment;
    .end local v1           #text:Ljava/lang/CharSequence;
    :cond_2
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-static {v2}, Lcom/android/server/status/Ticker;->access$200(Lcom/android/server/status/Ticker;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_3

    .line 233
    iget-object v2, p0, Lcom/android/server/status/Ticker$1;->this$0:Lcom/android/server/status/Ticker;

    invoke-virtual {v2}, Lcom/android/server/status/Ticker;->tickerDone()V

    .line 235
    :cond_3
    return-void
.end method
