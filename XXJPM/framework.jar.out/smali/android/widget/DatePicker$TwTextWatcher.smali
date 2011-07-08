.class public Landroid/widget/DatePicker$TwTextWatcher;
.super Ljava/lang/Object;
.source "DatePicker.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DatePicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TwTextWatcher"
.end annotation


# instance fields
.field private isMonth:Z

.field private mCheck:I

.field private mId:I

.field private mMaxLen:I

.field private mNext:I

.field private prevText:Ljava/lang/String;

.field final synthetic this$0:Landroid/widget/DatePicker;


# direct methods
.method public constructor <init>(Landroid/widget/DatePicker;IIZ)V
    .locals 2
    .parameter
    .parameter "maxLen"
    .parameter "id"
    .parameter "month"

    .prologue
    .line 600
    iput-object p1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 601
    iput p2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    .line 602
    iput p3, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    .line 603
    iput-boolean p4, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    .line 605
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 606
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    if-gez v0, :cond_0

    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    .line 608
    :cond_0
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    const/4 v1, 0x3

    if-lt v0, v1, :cond_1

    const/4 v0, -0x1

    :goto_0
    iput v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    .line 609
    return-void

    .line 608
    :cond_1
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private changeFocus()V
    .locals 2

    .prologue
    .line 659
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    const-string v1, "changeFocus() is called"

    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 661
    iget v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    if-ltz v0, :cond_1

    .line 662
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mCheck:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-nez v0, :cond_0

    .line 663
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mNext:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 666
    :cond_0
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 667
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-static {v0}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v0

    iget v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 670
    :cond_1
    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 3
    .parameter "view"

    .prologue
    .line 612
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "aftertextchanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 613
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4
    .parameter "s"
    .parameter "start"
    .parameter "count"
    .parameter "after"

    .prologue
    const-string v3, ", "

    .line 616
    iget-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "beforeTextChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 617
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    .line 618
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 6
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "count"

    .prologue
    const-string v5, "onTextChanged: "

    const-string v4, ", "

    .line 621
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 622
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onTextChanged: "

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/widget/DatePicker;->access$600(Landroid/widget/DatePicker;Ljava/lang/String;)V

    .line 624
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-static {v1}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 625
    .local v0, tag:Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 626
    const-string v1, "onClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "onLongClick"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 656
    :cond_0
    :goto_0
    return-void

    .line 643
    :cond_1
    iget-boolean v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->isMonth:Z

    if-eqz v1, :cond_2

    .line 644
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-static {v1}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 645
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x3

    if-lt v1, v2, :cond_0

    .line 646
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0

    .line 650
    :cond_2
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->prevText:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mMaxLen:I

    if-ne v1, v2, :cond_0

    .line 651
    iget-object v1, p0, Landroid/widget/DatePicker$TwTextWatcher;->this$0:Landroid/widget/DatePicker;

    invoke-static {v1}, Landroid/widget/DatePicker;->access$700(Landroid/widget/DatePicker;)[Landroid/widget/EditText;

    move-result-object v1

    iget v2, p0, Landroid/widget/DatePicker$TwTextWatcher;->mId:I

    aget-object v1, v1, v2

    invoke-virtual {v1}, Landroid/widget/EditText;->isFocused()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 652
    invoke-direct {p0}, Landroid/widget/DatePicker$TwTextWatcher;->changeFocus()V

    goto :goto_0
.end method
