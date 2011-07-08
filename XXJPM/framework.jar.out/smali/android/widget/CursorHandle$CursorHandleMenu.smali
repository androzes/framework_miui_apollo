.class Landroid/widget/CursorHandle$CursorHandleMenu;
.super Ljava/lang/Object;
.source "CursorHandle.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CursorHandleMenu"
.end annotation


# instance fields
.field public mBtnCopy:Landroid/widget/ImageButton;

.field public mBtnCut:Landroid/widget/ImageButton;

.field public mBtnPaste:Landroid/widget/ImageButton;

.field public mBtnSearch:Landroid/widget/ImageButton;

.field public mBtnSelect:Landroid/widget/ImageButton;

.field public mBtnShare:Landroid/widget/ImageButton;

.field public mCntMenuItem:I

.field private mContext:Landroid/content/Context;

.field public mCursorHandleMenuArrowDownView:Landroid/view/View;

.field public mCursorHandleMenuArrowUpView:Landroid/view/View;

.field public mCursorHandleMenuView:Landroid/view/View;

.field public mIsMenuShowing:Z

.field public mIsSelectingText:Z

.field public mPopupWindow:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowDown:Landroid/widget/PopupWindow;

.field public mPopupWindowArrowUp:Landroid/widget/PopupWindow;

.field private mSplitCopy:Landroid/widget/ImageView;

.field private mSplitCut:Landroid/widget/ImageView;

.field private mSplitPaste:Landroid/widget/ImageView;

.field private mSplitSearch:Landroid/widget/ImageView;

.field private mSplitSelect:Landroid/widget/ImageView;

.field final synthetic this$0:Landroid/widget/CursorHandle;


# direct methods
.method public constructor <init>(Landroid/widget/CursorHandle;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 892
    iput-object p1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 881
    iput v2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 889
    iput-boolean v2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 890
    iput-boolean v2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsMenuShowing:Z

    .line 893
    iput-object p2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    .line 894
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090086

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    .line 895
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090087

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowDownView:Landroid/view/View;

    .line 896
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const v1, 0x1090088

    invoke-static {v0, v1, v4}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowUpView:Landroid/view/View;

    .line 898
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020158

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    .line 899
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    .line 900
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015c

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    .line 901
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    .line 902
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020160

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    .line 903
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020162

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    .line 905
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020159

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSelect:Landroid/widget/ImageView;

    .line 906
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015b

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCopy:Landroid/widget/ImageView;

    .line 907
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCut:Landroid/widget/ImageView;

    .line 908
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x102015f

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitPaste:Landroid/widget/ImageView;

    .line 909
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    const v1, 0x1020161

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSearch:Landroid/widget/ImageView;

    .line 911
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 912
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowDownView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    .line 913
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCursorHandleMenuArrowUpView:Landroid/view/View;

    invoke-direct {v0, v1}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    .line 915
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 916
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 917
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 919
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 920
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 921
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 923
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setTouchable(Z)V

    .line 924
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 925
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 927
    invoke-virtual {p0}, Landroid/widget/CursorHandle$CursorHandleMenu;->updateButtonVisibility()V

    .line 929
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 930
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 931
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 932
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v0, p0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 933
    return-void
.end method


# virtual methods
.method public calcMenuWidthHeight()V
    .locals 5

    .prologue
    const/high16 v4, 0x4160

    const v3, 0x4129999a

    .line 1037
    const/4 v0, 0x0

    .line 1039
    .local v0, tmpWidth:I
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 1040
    add-int/lit8 v0, v0, 0x31

    .line 1042
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 1043
    add-int/lit8 v0, v0, 0x33

    .line 1045
    :cond_1
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_2

    .line 1046
    add-int/lit8 v0, v0, 0x33

    .line 1048
    :cond_2
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v1}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v1

    if-nez v1, :cond_3

    .line 1049
    add-int/lit8 v0, v0, 0x33

    .line 1052
    :cond_3
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    add-int/lit8 v2, v0, 0x2

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0xc

    add-int/lit8 v2, v2, 0x2

    add-int/lit8 v2, v2, 0x1

    add-int/lit8 v2, v2, 0x13

    add-int/lit8 v2, v2, 0xa

    int-to-float v2, v2

    invoke-virtual {p0, v2}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1053
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindow:Landroid/widget/PopupWindow;

    const v2, 0x42d7cccc

    invoke-virtual {p0, v2}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1055
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1056
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowDown:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1058
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v4}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1059
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mPopupWindowArrowUp:Landroid/widget/PopupWindow;

    invoke-virtual {p0, v3}, Landroid/widget/CursorHandle$CursorHandleMenu;->convertDipToPixel(F)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1060
    return-void
.end method

.method public convertDipToPixel(F)I
    .locals 5
    .parameter "dip"

    .prologue
    .line 968
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 969
    .local v0, density:F
    const/high16 v1, 0x3f80

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_0

    .line 970
    mul-float v1, p1, v0

    float-to-double v1, v1

    const-wide/high16 v3, 0x3fe0

    add-double/2addr v1, v3

    double-to-int v1, v1

    int-to-float p1, v1

    .line 973
    :cond_0
    float-to-int v1, p1

    return v1
.end method

.method isThereAnyTextInClipboard()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1024
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    if-ltz v1, :cond_1

    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-ltz v1, :cond_1

    .line 1025
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mContext:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/ClipboardManager;

    .line 1026
    .local v0, clip:Landroid/text/ClipboardManager;
    invoke-virtual {v0}, Landroid/text/ClipboardManager;->hasText()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1027
    const/4 v1, 0x1

    .line 1032
    .end local v0           #clip:Landroid/text/ClipboardManager;
    :goto_0
    return v1

    .restart local v0       #clip:Landroid/text/ClipboardManager;
    :cond_0
    move v1, v3

    .line 1029
    goto :goto_0

    .end local v0           #clip:Landroid/text/ClipboardManager;
    :cond_1
    move v1, v3

    .line 1032
    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .parameter "v"

    .prologue
    .line 936
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$200(Landroid/widget/CursorHandle;)Landroid/widget/CursorHandle$ThreadControl;

    move-result-object v0

    monitor-enter v0

    .line 937
    :try_start_0
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_0

    .line 939
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 940
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x1020028

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 941
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v1}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 944
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_1

    .line 946
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 947
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x1020021

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 948
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v1}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 951
    :cond_1
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_2

    .line 953
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 954
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x1020020

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 955
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v1}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 958
    :cond_2
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    if-ne p1, v1, :cond_3

    .line 960
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    .line 961
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v1}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v1

    const v2, 0x1020022

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->onTextContextMenuItem(I)Z

    .line 962
    iget-object v1, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-virtual {v1}, Landroid/widget/CursorHandle;->hideCursorHandleMenu()V

    .line 964
    :cond_3
    monitor-exit v0

    .line 965
    return-void

    .line 964
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public updateButtonVisibility()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 978
    iput v2, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 980
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 981
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 982
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 983
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 984
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSearch:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 985
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnShare:Landroid/widget/ImageButton;

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 988
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 989
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 990
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 991
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitPaste:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 992
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSearch:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 994
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->length()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mIsSelectingText:Z

    if-nez v0, :cond_0

    .line 995
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 996
    iget v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 999
    :cond_0
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->this$0:Landroid/widget/CursorHandle;

    invoke-static {v0}, Landroid/widget/CursorHandle;->access$400(Landroid/widget/CursorHandle;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->hasSelection()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1000
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCopy:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1001
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1002
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCopy:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1004
    iget v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 1005
    iget v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 1007
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 1008
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitSelect:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1012
    :cond_1
    invoke-virtual {p0}, Landroid/widget/CursorHandle$CursorHandleMenu;->isThereAnyTextInClipboard()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1013
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnPaste:Landroid/widget/ImageButton;

    invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 1014
    iget v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mCntMenuItem:I

    .line 1016
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnSelect:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mBtnCut:Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->getVisibility()I

    move-result v0

    if-nez v0, :cond_3

    .line 1017
    :cond_2
    iget-object v0, p0, Landroid/widget/CursorHandle$CursorHandleMenu;->mSplitCut:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 1020
    :cond_3
    return-void
.end method
