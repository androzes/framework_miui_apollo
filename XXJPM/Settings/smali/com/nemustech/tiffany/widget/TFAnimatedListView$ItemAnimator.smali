.class public Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;
.super Ljava/lang/Object;
.source "TFAnimatedListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFAnimatedListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "ItemAnimator"
.end annotation


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "TFAnimatedListView.ItemAnimator"


# instance fields
.field private mAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mDeleteAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field private mRetainAnimations:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field mTempItemList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 635
    const-class v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected constructor <init>(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)V
    .locals 1
    .parameter

    .prologue
    .line 635
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 644
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    .line 647
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    .line 650
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    .line 653
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public dump(Ljava/lang/String;)V
    .locals 3
    .parameter "indent"

    .prologue
    .line 638
    const-string v0, "TFAnimatedListView.ItemAnimator"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mAnimations item count : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 639
    return-void
.end method

.method public getDeleteItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 670
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public getItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 662
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public getRetainItemAnimation(I)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .locals 2
    .parameter "position"

    .prologue
    .line 666
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    return-object p0
.end method

.method public putDeleteItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 699
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 700
    return-void
.end method

.method public putItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 679
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 680
    return-void
.end method

.method public putRetainItemAnimation(ILcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 1
    .parameter "position"
    .parameter "a"

    .prologue
    .line 689
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 690
    return-void
.end method

.method public removeAll()V
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 771
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 772
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 773
    return-void
.end method

.method public removeDeleteItemAnimation(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 762
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 763
    return-void
.end method

.method public removeDeleteItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 738
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 739
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 740
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 743
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 745
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 746
    :cond_1
    return-void
.end method

.method public removeItemAnimation(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 754
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 755
    return-void
.end method

.method public removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 708
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 709
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 710
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 712
    :cond_0
    return-void
.end method

.method public removeRetainItemAnimation(I)V
    .locals 1
    .parameter "position"

    .prologue
    .line 758
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->delete(I)V

    .line 759
    return-void
.end method

.method public removeRetainItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V
    .locals 3
    .parameter "a"

    .prologue
    .line 721
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->indexOfValue(Ljava/lang/Object;)I

    move-result v0

    .line 722
    .local v0, i:I
    if-ltz v0, :cond_0

    .line 723
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->delete(I)V

    .line 726
    :cond_0
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-gtz v1, :cond_1

    .line 728
    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v1, v1, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 729
    :cond_1
    return-void
.end method

.method public run()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    const/4 v12, 0x1

    .line 796
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 797
    .local v3, curTime:J
    const/4 v1, 0x1

    .line 798
    .local v1, allFinished:Z
    const/4 v2, 0x0

    .line 800
    .local v2, animationCount:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 802
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 803
    .local v10, size:I
    add-int/2addr v2, v10

    .line 804
    sub-int v6, v10, v12

    .local v6, i:I
    :goto_0
    if-ltz v6, :cond_2

    .line 805
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 806
    .local v9, position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 807
    .local v8, ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_0

    if-nez v8, :cond_0

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 808
    :cond_0
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 809
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 810
    .local v5, finished:Z
    and-int/2addr v1, v5

    .line 811
    if-eqz v5, :cond_1

    .line 812
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_1

    .line 813
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 804
    :cond_1
    add-int/lit8 v6, v6, -0x1

    goto :goto_0

    .line 818
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_2
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 819
    add-int/2addr v2, v10

    .line 820
    sub-int v6, v10, v12

    :goto_1
    if-ltz v6, :cond_5

    .line 821
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 822
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mRetainAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 823
    .restart local v8       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_3

    if-nez v8, :cond_3

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 824
    :cond_3
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 825
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 826
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 827
    if-eqz v5, :cond_4

    .line 828
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_4

    .line 829
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 820
    :cond_4
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 834
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_5
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11}, Landroid/util/SparseArray;->size()I

    move-result v10

    .line 835
    add-int/2addr v2, v10

    .line 836
    sub-int v6, v10, v12

    :goto_2
    if-ltz v6, :cond_8

    .line 837
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v6}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 838
    .restart local v9       #position:I
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mDeleteAnimations:Landroid/util/SparseArray;

    invoke-virtual {v11, v9, v13}, Landroid/util/SparseArray;->get(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 839
    .restart local v8       #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    sget-boolean v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->$assertionsDisabled:Z

    if-nez v11, :cond_6

    if-nez v8, :cond_6

    new-instance v11, Ljava/lang/AssertionError;

    invoke-direct {v11}, Ljava/lang/AssertionError;-><init>()V

    throw v11

    .line 840
    :cond_6
    invoke-virtual {v8, v3, v4}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->computeAnimation(J)V

    .line 841
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->isFinished()Z

    move-result v5

    .line 842
    .restart local v5       #finished:Z
    and-int/2addr v1, v5

    .line 843
    if-eqz v5, :cond_7

    .line 844
    invoke-virtual {v8}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;->getRetainOnFinish()Z

    move-result v11

    if-nez v11, :cond_7

    .line 845
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 836
    :cond_7
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 850
    .end local v5           #finished:Z
    .end local v8           #ia:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    .end local v9           #position:I
    :cond_8
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;

    .line 851
    .local v0, aToDelete:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 852
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeRetainItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    .line 853
    invoke-virtual {p0, v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->removeDeleteItemAnimation(Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;)V

    goto :goto_3

    .line 856
    .end local v0           #aToDelete:Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimation;
    :cond_9
    if-nez v2, :cond_a

    .line 857
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    iget-object v11, v11, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->mRecycler:Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;

    invoke-virtual {v11}, Lcom/nemustech/tiffany/widget/TFAbsListView$RecycleBin;->clearShouldRetainView()V

    .line 859
    :cond_a
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->mTempItemList:Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 861
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->invalidate()V

    .line 862
    if-nez v1, :cond_c

    .line 863
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v11, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->post(Ljava/lang/Runnable;)Z

    .line 871
    :cond_b
    :goto_4
    return-void

    .line 865
    :cond_c
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v11

    if-eqz v11, :cond_b

    .line 866
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v12, 0x0

    invoke-static {v11, v12}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$302(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 867
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v11

    if-eqz v11, :cond_b

    .line 868
    iget-object v11, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v11

    invoke-interface {v11}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStop()V

    goto :goto_4
.end method

.method public start()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$302(Lcom/nemustech/tiffany/widget/TFAnimatedListView;Z)Z

    .line 783
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-virtual {v0, p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 784
    invoke-virtual {p0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->run()V

    .line 786
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$300(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 787
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 788
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimator;->this$0:Lcom/nemustech/tiffany/widget/TFAnimatedListView;

    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView;->access$400(Lcom/nemustech/tiffany/widget/TFAnimatedListView;)Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/nemustech/tiffany/widget/TFAnimatedListView$ItemAnimationListener;->OnItemAnimationStart()V

    .line 790
    :cond_0
    return-void
.end method
