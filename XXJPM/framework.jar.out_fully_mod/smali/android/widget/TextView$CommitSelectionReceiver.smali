.class Landroid/widget/TextView$CommitSelectionReceiver;
.super Landroid/os/ResultReceiver;
.source "TextView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "CommitSelectionReceiver"
.end annotation


# instance fields
.field mNewEnd:I

.field mNewStart:I

.field final synthetic this$0:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Landroid/widget/TextView;)V
    .locals 1
    .parameter

    .prologue
    .line 6585
    iput-object p1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    .line 6586
    invoke-virtual {p1}, Landroid/widget/TextView;->getHandler()Landroid/os/Handler;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/ResultReceiver;-><init>(Landroid/os/Handler;)V

    .line 6587
    return-void
.end method


# virtual methods
.method protected onReceiveResult(ILandroid/os/Bundle;)V
    .locals 4
    .parameter "resultCode"
    .parameter "resultData"

    .prologue
    .line 6590
    const/4 v1, 0x2

    if-eq p1, v1, :cond_2

    .line 6591
    iget-object v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    .line 6592
    .local v0, len:I
    iget v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    if-le v1, v0, :cond_0

    .line 6593
    iput v0, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    .line 6595
    :cond_0
    iget v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    if-le v1, v0, :cond_1

    .line 6596
    iput v0, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    .line 6598
    :cond_1
    iget-object v1, p0, Landroid/widget/TextView$CommitSelectionReceiver;->this$0:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/TextView;->access$900(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Spannable;

    iget v2, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewStart:I

    iget v3, p0, Landroid/widget/TextView$CommitSelectionReceiver;->mNewEnd:I

    invoke-static {v1, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 6600
    .end local v0           #len:I
    :cond_2
    return-void
.end method
