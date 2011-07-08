.class Landroid/widget/ListView$ListViewDataSetObserver;
.super Landroid/widget/AdapterView$AdapterDataSetObserver;
.source "ListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ListViewDataSetObserver"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ListView;


# direct methods
.method private constructor <init>(Landroid/widget/ListView;)V
    .locals 0
    .parameter

    .prologue
    .line 4049
    iput-object p1, p0, Landroid/widget/ListView$ListViewDataSetObserver;->this$0:Landroid/widget/ListView;

    invoke-direct {p0, p1}, Landroid/widget/AdapterView$AdapterDataSetObserver;-><init>(Landroid/widget/AdapterView;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/widget/ListView;Landroid/widget/ListView$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 4049
    invoke-direct {p0, p1}, Landroid/widget/ListView$ListViewDataSetObserver;-><init>(Landroid/widget/ListView;)V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 1

    .prologue
    .line 4052
    iget-object v0, p0, Landroid/widget/ListView$ListViewDataSetObserver;->this$0:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/widget/ListView;->access$600(Landroid/widget/ListView;)V

    .line 4053
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onChanged()V

    .line 4054
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .prologue
    .line 4058
    iget-object v0, p0, Landroid/widget/ListView$ListViewDataSetObserver;->this$0:Landroid/widget/ListView;

    invoke-static {v0}, Landroid/widget/ListView;->access$600(Landroid/widget/ListView;)V

    .line 4059
    invoke-super {p0}, Landroid/widget/AdapterView$AdapterDataSetObserver;->onInvalidated()V

    .line 4060
    return-void
.end method
