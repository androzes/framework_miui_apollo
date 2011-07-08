.class Landroid/widget/NumberPicker$5;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPicker;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPicker;


# direct methods
.method constructor <init>(Landroid/widget/NumberPicker;)V
    .locals 0
    .parameter

    .prologue
    .line 214
    iput-object p1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3
    .parameter "v"

    .prologue
    const/4 v2, 0x1

    .line 218
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasFocus()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$000(Landroid/widget/NumberPicker;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 221
    :cond_0
    const v0, 0x10201e0

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_2

    .line 222
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v2}, Landroid/widget/NumberPicker;->access$102(Landroid/widget/NumberPicker;Z)Z

    .line 223
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 228
    :cond_1
    :goto_0
    return v2

    .line 224
    :cond_2
    const v0, 0x10201e2

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 225
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0, v2}, Landroid/widget/NumberPicker;->access$502(Landroid/widget/NumberPicker;Z)Z

    .line 226
    iget-object v0, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v0}, Landroid/widget/NumberPicker;->access$400(Landroid/widget/NumberPicker;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/NumberPicker$5;->this$0:Landroid/widget/NumberPicker;

    invoke-static {v1}, Landroid/widget/NumberPicker;->access$800(Landroid/widget/NumberPicker;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method
