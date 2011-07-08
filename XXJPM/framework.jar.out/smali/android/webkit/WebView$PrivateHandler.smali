.class Landroid/webkit/WebView$PrivateHandler;
.super Landroid/os/Handler;
.source "WebView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/webkit/WebView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PrivateHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/webkit/WebView;


# direct methods
.method constructor <init>(Landroid/webkit/WebView;)V
    .locals 0
    .parameter

    .prologue
    .line 7047
    iput-object p1, p0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 52
    .parameter "msg"

    .prologue
    .line 7064
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    if-nez v5, :cond_1

    .line 7778
    .end local p0
    .end local p1
    :cond_0
    :goto_0
    return-void

    .line 7068
    .restart local p0
    .restart local p1
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move v5, v0

    sparse-switch v5, :sswitch_data_0

    .line 7775
    invoke-super/range {p0 .. p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 7070
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v7

    const-string/jumbo v8, "username"

    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v8

    const-string v9, "password"

    invoke-virtual {v8, v9}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7074
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 7078
    .restart local p0
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$700(Landroid/webkit/WebView;)Landroid/webkit/WebViewDatabase;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v6

    const-string v7, "host"

    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewDatabase;->setUsernamePassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7080
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/os/Message;

    invoke-virtual/range {p0 .. p0}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 7086
    .restart local p0
    :sswitch_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-eq v5, v6, :cond_3

    :cond_2
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 7090
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    invoke-static {v8}, Landroid/webkit/WebView;->access$3800(Landroid/webkit/WebView;)I

    move-result v8

    add-int/2addr v7, v8

    invoke-virtual {v6, v7}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    invoke-static {v8}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v8

    float-to-int v8, v8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v9, v0

    invoke-static {v9}, Landroid/webkit/WebView;->access$4000(Landroid/webkit/WebView;)I

    move-result v9

    add-int/2addr v8, v9

    invoke-virtual {v7, v8}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v7

    const/4 v8, 0x1

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$4100(Landroid/webkit/WebView;IIZ)V

    goto/16 :goto_0

    .line 7098
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_5

    .line 7099
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_4

    .line 7100
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    .line 7101
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$4200(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 7105
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x5

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7107
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x6

    if-ne v5, v6, :cond_0

    .line 7108
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7117
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v24

    .line 7118
    .local v24, hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v24, :cond_6

    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-nez v5, :cond_7

    .line 7120
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$4300(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v15

    .line 7121
    .local v15, contentX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$4400(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v16

    .line 7125
    .local v16, contentY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move v1, v15

    move/from16 v2, v16

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$4500(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 7135
    .end local v15           #contentX:I
    .end local v16           #contentY:I
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 7136
    :cond_8
    new-instance v39, Landroid/webkit/WebViewCore$TouchEventData;

    invoke-direct/range {v39 .. v39}, Landroid/webkit/WebViewCore$TouchEventData;-><init>()V

    .line 7137
    .local v39, ted:Landroid/webkit/WebViewCore$TouchEventData;
    const/16 v5, 0x100

    move v0, v5

    move-object/from16 v1, v39

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    .line 7138
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$4800(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentX(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v39

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mX:I

    .line 7139
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$4900(Landroid/webkit/WebView;)I

    move-result v7

    add-int/2addr v6, v7

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->viewToContentY(I)I

    move-result v5

    move v0, v5

    move-object/from16 v1, v39

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mY:I

    .line 7144
    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, v39

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mMetaState:I

    .line 7145
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Z

    move-result v5

    move v0, v5

    move-object/from16 v1, v39

    iput-boolean v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mReprocess:Z

    .line 7146
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$4700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 7147
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v39

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    .line 7148
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v5

    move v0, v5

    move-object/from16 v1, v39

    iput v0, v1, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    .line 7150
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x8d

    move-object v0, v5

    move v1, v6

    move-object/from16 v2, v39

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebViewCore;->sendMessage(ILjava/lang/Object;)V

    goto/16 :goto_0

    .line 7151
    .end local v39           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 7152
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2902(Landroid/webkit/WebView;I)I

    .line 7153
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 7154
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 7159
    .end local v24           #hitTest:Landroid/webkit/WebView$HitTestResult;
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$5000(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 7163
    :sswitch_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/Boolean;

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$5100(Landroid/webkit/WebView;IIZ)Z

    goto/16 :goto_0

    .line 7166
    .restart local p0
    :sswitch_7
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$5200(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 7169
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    .line 7174
    :cond_b
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7178
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5202(Landroid/webkit/WebView;Z)Z

    .line 7179
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    const/16 v6, 0x83

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v7, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebViewCore;->sendMessage(III)V

    goto/16 :goto_0

    .line 7184
    :sswitch_9
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5400(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 7187
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v35, v0

    check-cast v35, Landroid/webkit/WebViewCore$RestoreState;

    .line 7190
    .local v35, restoreState:Landroid/webkit/WebViewCore$RestoreState;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v6

    move-object/from16 v0, v35

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v7, v0

    const/4 v8, 0x0

    move-object v0, v5

    move-object/from16 v1, v35

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    goto/16 :goto_0

    .line 7197
    .end local v35           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    :sswitch_b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$5600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 7198
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5602(Landroid/webkit/WebView;Z)Z

    .line 7199
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;I)V

    .line 7201
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebViewCore;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v37

    .line 7203
    .local v37, settings:Landroid/webkit/WebSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v48

    .line 7204
    .local v48, viewWidth:I
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/webkit/WebViewCore$DrawData;

    .line 7206
    .local v20, draw:Landroid/webkit/WebViewCore$DrawData;
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object/from16 v47, v0

    .line 7207
    .local v47, viewSize:Landroid/graphics/Point;
    invoke-virtual/range {v37 .. v37}, Landroid/webkit/WebSettings;->getUseWideViewPort()Z

    move-result v44

    .line 7208
    .local v44, useWideViewport:Z
    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mRestoreState:Landroid/webkit/WebViewCore$RestoreState;

    move-object/from16 v35, v0

    .line 7209
    .restart local v35       #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    if-eqz v35, :cond_13

    const/4 v5, 0x1

    move/from16 v22, v5

    .line 7210
    .local v22, hasRestoreState:Z
    :goto_1
    if-eqz v22, :cond_d

    .line 7211
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v6, v0

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v7, v0

    const/4 v8, 0x1

    move-object v0, v5

    move-object/from16 v1, v35

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-static {v0, v1, v2, v3, v4}, Landroid/webkit/WebView;->access$5500(Landroid/webkit/WebView;Landroid/webkit/WebViewCore$RestoreState;IIZ)V

    .line 7213
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_d

    .line 7214
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7216
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v5

    if-lez v5, :cond_15

    .line 7217
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    const/high16 v7, 0x42c8

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$5900(Landroid/webkit/WebView;)I

    move-result v7

    int-to-float v7, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    const/high16 v9, 0x42c8

    mul-float/2addr v8, v9

    cmpl-float v7, v7, v8

    if-eqz v7, :cond_14

    const/4 v7, 0x1

    :goto_2
    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;FZZ)V

    .line 7238
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollX:I

    move v6, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mScrollY:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$5300(Landroid/webkit/WebView;II)Z

    .line 7244
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    .line 7246
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$6000(Landroid/webkit/WebView;)V

    .line 7248
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebSettings;->getBuiltInZoomControls()Z

    move-result v5

    if-eqz v5, :cond_d

    .line 7249
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$100(Landroid/webkit/WebView;)V

    .line 7257
    :cond_d
    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/Point;->x:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastWidthSent:I

    if-ne v5, v6, :cond_1a

    move-object/from16 v0, v47

    iget v0, v0, Landroid/graphics/Point;->y:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mLastHeightSent:I

    if-ne v5, v6, :cond_1a

    const/4 v5, 0x1

    move/from16 v43, v5

    .line 7259
    .local v43, updateLayout:Z
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v6, v0

    iget v6, v6, Landroid/graphics/Point;->x:I

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mWidthHeight:Landroid/graphics/Point;

    move-object v7, v0

    iget v7, v7, Landroid/graphics/Point;->y:I

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    invoke-static {v8}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Z

    move-result v8

    if-eqz v8, :cond_1b

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    invoke-static {v8}, Landroid/webkit/WebView;->access$6200(Landroid/webkit/WebView;)I

    move-result v8

    :goto_5
    add-int/2addr v7, v8

    move-object v0, v5

    move v1, v6

    move v2, v7

    move/from16 v3, v43

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$6300(Landroid/webkit/WebView;IIZ)V

    .line 7267
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mInvalRegion:Landroid/graphics/Region;

    move-object v6, v0

    invoke-virtual {v6}, Landroid/graphics/Region;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6400(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    .line 7268
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    if-eqz v5, :cond_e

    .line 7269
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$6500(Landroid/webkit/WebView;)Landroid/webkit/WebView$PictureListener;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-virtual {v7}, Landroid/webkit/WebView;->capturePicture()Landroid/graphics/Picture;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Landroid/webkit/WebView$PictureListener;->onNewPicture(Landroid/webkit/WebView;Landroid/graphics/Picture;)V

    .line 7271
    :cond_e
    if-eqz v44, :cond_f

    .line 7276
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    sget v6, Landroid/webkit/WebView;->sMaxViewportWidth:I

    move/from16 v0, v48

    int-to-float v0, v0

    move v7, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    invoke-static {v8}, Landroid/webkit/WebView;->access$6600(Landroid/webkit/WebView;)F

    move-result v8

    div-float/2addr v7, v8

    float-to-int v7, v7

    move-object/from16 v0, v20

    iget v0, v0, Landroid/webkit/WebViewCore$DrawData;->mMinPrefWidth:I

    move v8, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Landroid/webkit/WebViewCore$DrawData;->mViewPoint:Landroid/graphics/Point;

    move-object v9, v0

    iget v9, v9, Landroid/graphics/Point;->x:I

    invoke-static {v8, v9}, Ljava/lang/Math;->max(II)I

    move-result v8

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v6

    iput v6, v5, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    .line 7281
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$6700(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_10

    .line 7282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$2602(Landroid/webkit/WebView;F)F

    .line 7284
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$5800(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_11

    .line 7287
    move/from16 v0, v48

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$6800(Landroid/webkit/WebView;)F

    move-result v6

    mul-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v6, v6

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v6, 0x3f80

    cmpl-float v5, v5, v6

    if-lez v5, :cond_11

    .line 7289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move v6, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    iget v7, v7, Landroid/webkit/WebView;->mZoomOverviewWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v7

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v8, v0

    iget v8, v8, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(F)F

    move-result v7

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v8

    cmpg-float v7, v7, v8

    if-gez v7, :cond_1c

    const/4 v7, 0x1

    :goto_6
    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;FZZ)V

    .line 7295
    :cond_11
    move-object/from16 v0, v20

    iget-boolean v0, v0, Landroid/webkit/WebViewCore$DrawData;->mFocusSizeChanged:Z

    move v5, v0

    if-eqz v5, :cond_12

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_12

    .line 7296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$6902(Landroid/webkit/WebView;Z)Z

    .line 7298
    :cond_12
    if-eqz v22, :cond_0

    .line 7299
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mViewManager:Landroid/webkit/ViewManager;

    invoke-virtual {v5}, Landroid/webkit/ViewManager;->postReadyToDrawAll()V

    goto/16 :goto_0

    .line 7209
    .end local v22           #hasRestoreState:Z
    .end local v43           #updateLayout:Z
    :cond_13
    const/4 v5, 0x0

    move/from16 v22, v5

    goto/16 :goto_1

    .line 7217
    .restart local v22       #hasRestoreState:Z
    :cond_14
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 7220
    :cond_15
    move-object/from16 v0, v35

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v5, v0

    const/4 v6, 0x0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_16

    .line 7221
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move v6, v0

    iput v6, v5, Landroid/webkit/WebView;->mTextWrapScale:F

    .line 7222
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v35

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mViewScale:F

    move v6, v0

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v5, v6, v7, v8}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;FZZ)V

    goto/16 :goto_3

    .line 7225
    :cond_16
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    if-eqz v44, :cond_17

    invoke-virtual/range {v37 .. v37}, Landroid/webkit/WebSettings;->getLoadWithOverviewMode()Z

    move-result v6

    if-eqz v6, :cond_17

    const/4 v6, 0x1

    :goto_7
    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7228
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-boolean v5, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    if-eqz v5, :cond_18

    .line 7229
    move/from16 v0, v48

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4448

    div-float v36, v5, v6

    .line 7234
    .local v36, scale:F
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget v6, v6, Landroid/webkit/WebView;->mTextWrapScale:F

    sub-float v6, v36, v6

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    invoke-static {}, Landroid/webkit/WebView;->access$2700()F

    move-result v7

    cmpl-float v6, v6, v7

    if-ltz v6, :cond_19

    const/4 v6, 0x1

    :goto_9
    const/4 v7, 0x0

    move-object v0, v5

    move/from16 v1, v36

    move v2, v6

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$1100(Landroid/webkit/WebView;FZZ)V

    goto/16 :goto_3

    .line 7225
    .end local v36           #scale:F
    :cond_17
    const/4 v6, 0x0

    goto :goto_7

    .line 7232
    :cond_18
    move-object/from16 v0, v35

    iget v0, v0, Landroid/webkit/WebViewCore$RestoreState;->mTextWrapScale:F

    move/from16 v36, v0

    .restart local v36       #scale:F
    goto :goto_8

    .line 7234
    :cond_19
    const/4 v6, 0x0

    goto :goto_9

    .line 7257
    .end local v36           #scale:F
    :cond_1a
    const/4 v5, 0x0

    move/from16 v43, v5

    goto/16 :goto_4

    .line 7259
    .restart local v43       #updateLayout:Z
    :cond_1b
    const/4 v8, 0x0

    goto/16 :goto_5

    .line 7289
    :cond_1c
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 7305
    .end local v20           #draw:Landroid/webkit/WebViewCore$DrawData;
    .end local v22           #hasRestoreState:Z
    .end local v35           #restoreState:Landroid/webkit/WebViewCore$RestoreState;
    .end local v37           #settings:Landroid/webkit/WebSettings;
    .end local v43           #updateLayout:Z
    .end local v44           #useWideViewport:Z
    .end local v47           #viewSize:Landroid/graphics/Point;
    .end local v48           #viewWidth:I
    :sswitch_c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7000(Landroid/webkit/WebView;I)V

    goto/16 :goto_0

    .line 7310
    :sswitch_d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7312
    invoke-virtual/range {p1 .. p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v5

    const-string v6, "password"

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_1d

    .line 7313
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v41

    .line 7314
    .local v41, text:Landroid/text/Spannable;
    invoke-static/range {v41 .. v41}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v38

    .line 7315
    .local v38, start:I
    invoke-static/range {v41 .. v41}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v21

    .line 7316
    .local v21, end:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->setInPassword(Z)V

    .line 7319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->getText()Landroid/text/Editable;

    move-result-object v31

    .line 7321
    .local v31, pword:Landroid/text/Spannable;
    move-object/from16 v0, v31

    move/from16 v1, v38

    move/from16 v2, v21

    invoke-static {v0, v1, v2}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    goto/16 :goto_0

    .line 7324
    .end local v21           #end:I
    .end local v31           #pword:Landroid/text/Spannable;
    .end local v38           #start:I
    .end local v41           #text:Landroid/text/Spannable;
    :cond_1d
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$7100(Landroid/webkit/WebView;)I

    move-result v6

    if-ne v5, v6, :cond_0

    .line 7325
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setTextAndKeepSelection(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 7331
    .restart local p0
    :sswitch_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;Z)V

    .line 7332
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 7339
    .restart local p0
    :sswitch_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 7340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/webkit/WebViewCore$TextSelectionData;

    move-object v0, v5

    move v1, v6

    move v2, v7

    move-object/from16 v3, p0

    invoke-static {v0, v1, v2, v3}, Landroid/webkit/WebView;->access$7300(Landroid/webkit/WebView;IILandroid/webkit/WebViewCore$TextSelectionData;)V

    goto/16 :goto_0

    .line 7344
    .restart local p0
    :sswitch_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7346
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Ljava/lang/String;

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/webkit/WebTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 7347
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v25

    .line 7352
    .local v25, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v25, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7353
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, v25

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->restartInput(Landroid/view/View;)V

    goto/16 :goto_0

    .line 7358
    .end local v25           #imm:Landroid/view/inputmethod/InputMethodManager;
    .restart local p1
    :sswitch_11
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    const/4 v7, 0x1

    const/4 v8, 0x0

    const-wide/16 v9, 0x0

    invoke-static/range {v5 .. v10}, Landroid/webkit/WebView;->access$7400(Landroid/webkit/WebView;IIZJ)Z

    goto/16 :goto_0

    .line 7363
    :sswitch_12
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1e

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$7500(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_1e

    .line 7364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebTextView;->bringIntoView()V

    .line 7365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 7368
    :cond_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$7600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7370
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;)I

    move-result v7

    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$7900(Landroid/webkit/WebView;Ljava/lang/String;I)Landroid/graphics/Rect;

    move-result-object v33

    .line 7371
    .local v33, rect:Landroid/graphics/Rect;
    const-string/jumbo v5, "webview"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Select Control "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {v33 .. v33}, Landroid/graphics/Rect;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7372
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    move-object v0, v5

    move-object/from16 v1, v33

    move v2, v6

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$8000(Landroid/webkit/WebView;Landroid/graphics/Rect;Z)V

    goto/16 :goto_0

    .line 7377
    .end local v33           #rect:Landroid/graphics/Rect;
    :sswitch_13
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->clearTextEntry(Z)V

    goto/16 :goto_0

    .line 7380
    :sswitch_14
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/graphics/Rect;

    .line 7381
    .local v32, r:Landroid/graphics/Rect;
    if-nez v32, :cond_1f

    .line 7382
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7386
    :cond_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->right:I

    move v8, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    move v9, v0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$8100(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 7391
    .end local v32           #r:Landroid/graphics/Rect;
    :sswitch_15
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7395
    :sswitch_16
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_20

    .line 7399
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5602(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    .line 7401
    :cond_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5602(Landroid/webkit/WebView;Z)Z

    .line 7402
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$5700(Landroid/webkit/WebView;I)V

    .line 7403
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7408
    :sswitch_17
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v14, v0

    check-cast v14, Landroid/webkit/WebTextView$AutoCompleteAdapter;

    .line 7409
    .local v14, adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebTextView;->isSameTextField(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7410
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1800(Landroid/webkit/WebView;)Landroid/webkit/WebTextView;

    move-result-object v5

    invoke-virtual {v5, v14}, Landroid/webkit/WebTextView;->setAdapterCustom(Landroid/webkit/WebTextView$AutoCompleteAdapter;)V

    goto/16 :goto_0

    .line 7414
    .end local v14           #adapter:Landroid/webkit/WebTextView$AutoCompleteAdapter;
    :sswitch_18
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7415
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    goto/16 :goto_0

    .line 7421
    :sswitch_19
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8202(Landroid/webkit/WebView;Z)Z

    .line 7422
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8302(Landroid/webkit/WebView;Z)Z

    .line 7423
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    goto/16 :goto_0

    .line 7427
    :sswitch_1a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    if-eqz v6, :cond_21

    const/4 v6, 0x1

    :goto_a
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8402(Landroid/webkit/WebView;Z)Z

    goto/16 :goto_0

    :cond_21
    const/4 v6, 0x0

    goto :goto_a

    .line 7431
    :sswitch_1b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 7434
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object v5, v0

    if-nez v5, :cond_25

    .line 7435
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_23

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_23

    .line 7440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_22

    const/4 v6, 0x3

    :goto_b
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3602(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    :cond_22
    const/4 v6, 0x2

    goto :goto_b

    .line 7442
    :cond_23
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$3600(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 7447
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    const/4 v7, 0x1

    if-ne v6, v7, :cond_24

    const/4 v6, 0x3

    :goto_c
    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3602(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    :cond_24
    const/4 v6, 0x0

    goto :goto_c

    .line 7450
    :cond_25
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_0

    .line 7453
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v39, v0

    check-cast v39, Landroid/webkit/WebViewCore$TouchEventData;

    .line 7454
    .restart local v39       #ted:Landroid/webkit/WebViewCore$TouchEventData;
    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mAction:I

    move v5, v0

    sparse-switch v5, :sswitch_data_1

    goto/16 :goto_0

    .line 7456
    :sswitch_1c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8502(Landroid/webkit/WebView;F)F

    .line 7457
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8602(Landroid/webkit/WebView;F)F

    .line 7458
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7462
    :sswitch_1d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-eq v5, v6, :cond_26

    .line 7463
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x3

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;I)I

    .line 7464
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8502(Landroid/webkit/WebView;F)F

    .line 7465
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8602(Landroid/webkit/WebView;F)F

    .line 7466
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$8800(Landroid/webkit/WebView;)V

    .line 7468
    :cond_26
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$8900(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$8500(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9000(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$9100(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v18, v5, v6

    .line 7471
    .local v18, deltaX:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$9200(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$8600(Landroid/webkit/WebView;)F

    move-result v7

    add-float/2addr v6, v7

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v7, v0

    sub-float/2addr v6, v7

    float-to-int v6, v6

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9300(Landroid/webkit/WebView;I)I

    move-result v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$9400(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v19, v5, v6

    .line 7474
    .local v19, deltaY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-static {v0, v1, v2}, Landroid/webkit/WebView;->access$9500(Landroid/webkit/WebView;II)V

    .line 7475
    if-eqz v18, :cond_27

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8502(Landroid/webkit/WebView;F)F

    .line 7476
    :cond_27
    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8602(Landroid/webkit/WebView;F)F

    goto/16 :goto_0

    .line 7481
    .end local v18           #deltaX:I
    .end local v19           #deltaY:I
    :sswitch_1e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$8700(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_28

    .line 7483
    invoke-static {}, Landroid/webkit/WebViewCore;->resumePriority()V

    .line 7484
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$900(Landroid/webkit/WebView;)Landroid/webkit/WebViewCore;

    move-result-object v5

    invoke-static {v5}, Landroid/webkit/WebViewCore;->resumeUpdatePicture(Landroid/webkit/WebViewCore;)V

    .line 7486
    :cond_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7490
    :sswitch_1f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewX:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3702(Landroid/webkit/WebView;F)F

    .line 7491
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v39

    iget v0, v0, Landroid/webkit/WebViewCore$TouchEventData;->mViewY:F

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$3902(Landroid/webkit/WebView;F)F

    .line 7492
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$9600(Landroid/webkit/WebView;)V

    .line 7493
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7496
    :sswitch_20
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getHitTestResult()Landroid/webkit/WebView$HitTestResult;

    move-result-object v24

    .line 7497
    .restart local v24       #hitTest:Landroid/webkit/WebView$HitTestResult;
    if-eqz v24, :cond_29

    invoke-static/range {v24 .. v24}, Landroid/webkit/WebView$HitTestResult;->access$600(Landroid/webkit/WebView$HitTestResult;)I

    move-result v5

    if-eqz v5, :cond_29

    .line 7499
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->performLongClick()Z

    .line 7500
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 7502
    :cond_29
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x7

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$8702(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7509
    .end local v24           #hitTest:Landroid/webkit/WebView$HitTestResult;
    .end local v39           #ted:Landroid/webkit/WebViewCore$TouchEventData;
    :sswitch_21
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v5, v0

    if-nez v5, :cond_2a

    .line 7510
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$9700(Landroid/webkit/WebView;)V

    goto/16 :goto_0

    .line 7513
    :cond_2a
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v5, v0

    if-nez v5, :cond_2b

    .line 7514
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 7516
    :cond_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$7200(Landroid/webkit/WebView;Z)V

    goto/16 :goto_0

    .line 7523
    :sswitch_22
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$6100(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7524
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$9800(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->findAll(Ljava/lang/String;)I

    goto/16 :goto_0

    .line 7529
    :sswitch_23
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$9902(Landroid/webkit/WebView;I)I

    .line 7530
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 7534
    :sswitch_24
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$2900(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x3

    if-ne v5, v6, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$9900(Landroid/webkit/WebView;)I

    move-result v5

    const/4 v6, 0x2

    if-ne v5, v6, :cond_0

    .line 7536
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v6

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$10000(Landroid/webkit/WebView;IZ)Z

    .line 7538
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x9

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-static {}, Landroid/view/ViewConfiguration;->getScrollDefaultDelay()I

    move-result v7

    int-to-long v7, v7

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 7545
    :sswitch_25
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v7, v0

    invoke-static {v5, v6, v7}, Landroid/webkit/WebView;->access$10100(Landroid/webkit/WebView;II)V

    goto/16 :goto_0

    .line 7549
    :sswitch_26
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v45, v0

    check-cast v45, Landroid/view/View;

    .line 7550
    .local v45, view:Landroid/view/View;
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v30, v0

    .line 7552
    .local v30, npp:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    if-eqz v5, :cond_2c

    .line 7553
    const-string/jumbo v5, "webview"

    const-string v6, "Should not have another full screen."

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 7554
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 7556
    :cond_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    new-instance v6, Landroid/webkit/PluginFullScreenHolder;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    move-object v0, v6

    move-object v1, v7

    move/from16 v2, v30

    invoke-direct {v0, v1, v2}, Landroid/webkit/PluginFullScreenHolder;-><init>(Landroid/webkit/WebView;I)V

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    .line 7557
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    move-object v0, v5

    move-object/from16 v1, v45

    invoke-virtual {v0, v1}, Landroid/webkit/PluginFullScreenHolder;->setContentView(Landroid/view/View;)V

    .line 7558
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCancelable(Z)V

    .line 7559
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Landroid/webkit/PluginFullScreenHolder;->setCanceledOnTouchOutside(Z)V

    .line 7560
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->show()V

    goto/16 :goto_0

    .line 7565
    .end local v30           #npp:I
    .end local v45           #view:Landroid/view/View;
    :sswitch_27
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$4600(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7566
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    invoke-virtual {v5}, Landroid/webkit/PluginFullScreenHolder;->dismiss()V

    .line 7567
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mFullScreenHolder:Landroid/webkit/PluginFullScreenHolder;

    goto/16 :goto_0

    .line 7572
    :sswitch_28
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1700(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 7573
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    .line 7574
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    goto/16 :goto_0

    .line 7579
    :sswitch_29
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v17, v0

    check-cast v17, Landroid/webkit/WebViewCore$ShowRectData;

    .line 7580
    .local v17, data:Landroid/webkit/WebViewCore$ShowRectData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$10200(Landroid/webkit/WebView;)I

    move-result v50

    .line 7581
    .local v50, x:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mLeft:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewX(I)I

    move-result v26

    .line 7582
    .local v26, left:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mWidth:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v49

    .line 7583
    .local v49, width:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentWidth:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v28

    .line 7584
    .local v28, maxWidth:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewWidth()I

    move-result v48

    .line 7585
    .restart local v48       #viewWidth:I
    move/from16 v0, v49

    move/from16 v1, v48

    if-ge v0, v1, :cond_2d

    .line 7587
    div-int/lit8 v5, v49, 0x2

    add-int v5, v5, v26

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$10300(Landroid/webkit/WebView;)I

    move-result v6

    sub-int/2addr v5, v6

    div-int/lit8 v6, v48, 0x2

    sub-int/2addr v5, v6

    add-int v50, v50, v5

    .line 7601
    :goto_d
    const/4 v5, 0x0

    add-int v6, v50, v48

    move/from16 v0, v28

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v48

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v50

    .line 7603
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mTop:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewY(I)I

    move-result v42

    .line 7604
    .local v42, top:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mHeight:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v23

    .line 7605
    .local v23, height:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mContentHeight:I

    move v6, v0

    invoke-virtual {v5, v6}, Landroid/webkit/WebView;->contentToViewDimension(I)I

    move-result v27

    .line 7606
    .local v27, maxHeight:I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->getViewHeight()I

    move-result v46

    .line 7607
    .local v46, viewHeight:I
    move/from16 v0, v42

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInDoc:F

    move v6, v0

    move/from16 v0, v23

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mYPercentInView:F

    move v6, v0

    move/from16 v0, v46

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    move v0, v5

    float-to-int v0, v0

    move/from16 v51, v0

    .line 7618
    .local v51, y:I
    const/4 v5, 0x0

    add-int v6, v51, v46

    move/from16 v0, v27

    move v1, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v6

    sub-int v6, v6, v46

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 7622
    const/4 v5, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$1400(Landroid/webkit/WebView;)I

    move-result v6

    sub-int v6, v51, v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v51

    .line 7623
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    move/from16 v1, v50

    move/from16 v2, v51

    invoke-virtual {v0, v1, v2}, Landroid/webkit/WebView;->scrollTo(II)V

    goto/16 :goto_0

    .line 7589
    .end local v23           #height:I
    .end local v27           #maxHeight:I
    .end local v42           #top:I
    .end local v46           #viewHeight:I
    .end local v51           #y:I
    :cond_2d
    move/from16 v0, v26

    int-to-float v0, v0

    move v5, v0

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInDoc:F

    move v6, v0

    move/from16 v0, v49

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    add-float/2addr v5, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$10400(Landroid/webkit/WebView;)I

    move-result v6

    int-to-float v6, v6

    sub-float/2addr v5, v6

    move-object/from16 v0, v17

    iget v0, v0, Landroid/webkit/WebViewCore$ShowRectData;->mXPercentInView:F

    move v6, v0

    move/from16 v0, v48

    int-to-float v0, v0

    move v7, v0

    mul-float/2addr v6, v7

    sub-float/2addr v5, v6

    float-to-int v5, v5

    add-int v50, v50, v5

    goto/16 :goto_d

    .line 7628
    .end local v17           #data:Landroid/webkit/WebViewCore$ShowRectData;
    .end local v26           #left:I
    .end local v28           #maxWidth:I
    .end local v48           #viewWidth:I
    .end local v49           #width:I
    .end local v50           #x:I
    :sswitch_2a
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v32, v0

    check-cast v32, Landroid/graphics/Rect;

    .line 7629
    .restart local v32       #r:Landroid/graphics/Rect;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/webkit/WebView;->mInZoomOverview:Z

    .line 7630
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->left:I

    move v6, v0

    move-object/from16 v0, v32

    iget v0, v0, Landroid/graphics/Rect;->top:I

    move v7, v0

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->width()I

    move-result v8

    invoke-virtual/range {v32 .. v32}, Landroid/graphics/Rect;->height()I

    move-result v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/webkit/WebView;->access$10500(Landroid/webkit/WebView;IIII)V

    goto/16 :goto_0

    .line 7634
    .end local v32           #r:Landroid/graphics/Rect;
    :sswitch_2b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$10602(Landroid/webkit/WebView;I)I

    .line 7635
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move v6, v0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$10702(Landroid/webkit/WebView;I)I

    goto/16 :goto_0

    .line 7639
    :sswitch_2c
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p0, v0

    .end local p0
    check-cast p0, Landroid/graphics/Rect;

    move-object v0, v5

    move-object/from16 v1, p0

    invoke-static {v0, v1}, Landroid/webkit/WebView;->access$10800(Landroid/webkit/WebView;Landroid/graphics/Rect;)V

    goto/16 :goto_0

    .line 7643
    .restart local p0
    :sswitch_2d
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$7700(Landroid/webkit/WebView;)Ljava/lang/String;

    move-result-object v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$7800(Landroid/webkit/WebView;)I

    move-result v7

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v8, v0

    invoke-virtual {v5, v6, v7, v8}, Landroid/webkit/WebView;->nativeMoveCursorToInput(Ljava/lang/String;II)I

    move-result v29

    .line 7645
    .local v29, nextInputType:I
    if-nez v29, :cond_0

    .line 7649
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->rebuildWebTextView()V

    .line 7654
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->setFocusControllerInactive()V

    .line 7655
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    .line 7657
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v6, 0x76

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v9, 0x0

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v5, v6, v7, v8, v9}, Landroid/os/Message;->obtain(Landroid/os/Handler;IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 7662
    .end local v29           #nextInputType:I
    :sswitch_2e
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v34, v0

    check-cast v34, Landroid/webkit/WebView$WebSelectRequest;

    .line 7663
    .local v34, req:Landroid/webkit/WebView$WebSelectRequest;
    move-object/from16 v0, v34

    iget-boolean v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_multiSelection:Z

    move v5, v0

    const/4 v6, 0x1

    if-ne v5, v6, :cond_2e

    .line 7664
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    move-object v7, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    move-object v8, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[I[ILjava/lang/String;I)V

    goto/16 :goto_0

    .line 7669
    :cond_2e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_stringsArray:[Ljava/lang/String;

    move-object v6, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_enabledArray:[I

    move-object v7, v0

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_selectedArray:[I

    move-object v8, v0

    const/4 v9, 0x0

    aget v8, v8, v9

    move-object/from16 v0, v34

    iget-object v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidateName:Ljava/lang/String;

    move-object v9, v0

    move-object/from16 v0, v34

    iget v0, v0, Landroid/webkit/WebView$WebSelectRequest;->m_focusCandidatePointer:I

    move v10, v0

    invoke-virtual/range {v5 .. v10}, Landroid/webkit/WebView;->requestListBox([Ljava/lang/String;[IILjava/lang/String;I)V

    goto/16 :goto_0

    .line 7675
    .end local v34           #req:Landroid/webkit/WebView$WebSelectRequest;
    :sswitch_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->nativeClearCursor()V

    goto/16 :goto_0

    .line 7679
    :sswitch_30
    const/16 v40, 0x0

    .line 7680
    .local v40, tempCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object v0, v5

    iget-object v0, v0, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v40, v0

    .line 7681
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 p1, v0

    .end local p1
    check-cast p1, Landroid/webkit/WebViewCore$SelectionCopiedData;

    move-object/from16 v0, p1

    move-object v1, v5

    iput-object v0, v1, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 7683
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    if-eqz v5, :cond_39

    .line 7695
    if-nez v40, :cond_34

    .line 7697
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_2f

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v5, :cond_30

    :cond_2f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_31

    .line 7699
    :cond_30
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->show(II)V

    .line 7712
    :cond_31
    :goto_e
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11100(Landroid/webkit/WebView;)Z

    move-result v5

    if-nez v5, :cond_32

    .line 7713
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x1

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11102(Landroid/webkit/WebView;Z)Z

    .line 7715
    invoke-static {}, Landroid/webkit/WebView;->access$11200()F

    move-result v5

    invoke-static {}, Landroid/webkit/WebView;->access$11300()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float v11, v5, v6

    .line 7716
    .local v11, Scale1:F
    invoke-static {}, Landroid/webkit/WebView;->access$11200()F

    move-result v5

    invoke-static {}, Landroid/webkit/WebView;->access$11300()F

    move-result v6

    sub-float/2addr v5, v6

    const/high16 v6, 0x4080

    mul-float/2addr v5, v6

    const/high16 v6, 0x40a0

    div-float v12, v5, v6

    .line 7717
    .local v12, Scale2:F
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/16 v6, 0xa

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11402(Landroid/webkit/WebView;I)I

    .line 7718
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v5

    cmpl-float v5, v5, v11

    if-ltz v5, :cond_38

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v5

    cmpg-float v5, v5, v12

    if-gez v5, :cond_38

    .line 7719
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x6

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11402(Landroid/webkit/WebView;I)I

    .line 7724
    .end local v11           #Scale1:F
    .end local v12           #Scale2:F
    :cond_32
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mStartBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mEndBoundRect:Landroid/graphics/Rect;

    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget-object v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mSelectRegion:Landroid/graphics/Region;

    invoke-virtual {v5}, Landroid/graphics/Region;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_33

    .line 7726
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    iput-object v6, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    .line 7727
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11102(Landroid/webkit/WebView;Z)Z

    .line 7747
    :cond_33
    :goto_10
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/webkit/WebView;->invalidate()V

    goto/16 :goto_0

    .line 7700
    :cond_34
    move-object/from16 v0, v40

    iget v0, v0, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v6, v6, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eq v5, v6, :cond_31

    .line 7704
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$10900(Landroid/webkit/WebView;)Z

    move-result v5

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    if-eqz v5, :cond_36

    :cond_35
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x1

    if-ne v5, v6, :cond_37

    .line 7706
    :cond_36
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    invoke-static {v6}, Landroid/webkit/WebView;->access$3700(Landroid/webkit/WebView;)F

    move-result v6

    float-to-int v6, v6

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v7, v0

    invoke-static {v7}, Landroid/webkit/WebView;->access$3900(Landroid/webkit/WebView;)F

    move-result v7

    float-to-int v7, v7

    invoke-virtual {v5, v6, v7}, Landroid/webkit/WebMagnifier;->show(II)V

    goto/16 :goto_e

    .line 7707
    :cond_37
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;

    iget v5, v5, Landroid/webkit/WebViewCore$SelectionCopiedData;->mGranularity:I

    const/4 v6, 0x4

    if-ne v5, v6, :cond_31

    .line 7708
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    goto/16 :goto_e

    .line 7720
    .restart local v11       #Scale1:F
    .restart local v12       #Scale2:F
    :cond_38
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$1000(Landroid/webkit/WebView;)F

    move-result v5

    cmpl-float v5, v5, v12

    if-ltz v5, :cond_32

    .line 7721
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x4

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11402(Landroid/webkit/WebView;I)I

    goto/16 :goto_f

    .line 7733
    .end local v11           #Scale1:F
    .end local v12           #Scale2:F
    :cond_39
    if-eqz v40, :cond_3a

    .line 7736
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8d

    const/4 v8, 0x6

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0xc8

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 7741
    :cond_3a
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    const/4 v6, 0x0

    invoke-static {v5, v6}, Landroid/webkit/WebView;->access$11102(Landroid/webkit/WebView;Z)Z

    .line 7742
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11000(Landroid/webkit/WebView;)Landroid/webkit/WebMagnifier;

    move-result-object v5

    invoke-virtual {v5}, Landroid/webkit/WebMagnifier;->hide()V

    goto/16 :goto_10

    .line 7752
    .end local v40           #tempCopyInfo:Landroid/webkit/WebViewCore$SelectionCopiedData;
    .restart local p1
    :sswitch_31
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11500(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 7754
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move v13, v0

    .line 7759
    .local v13, Status:I
    const/16 v5, 0x8

    if-ne v13, v5, :cond_3b

    .line 7761
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11600(Landroid/webkit/WebView;)Landroid/widget/Scroller;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Scroller;->isFinished()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 7763
    const-string/jumbo v5, "webview"

    const-string v6, "SELECTION_CONTROLS_NOTIFY still scrolling"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 7764
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    iget-object v5, v5, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v6, v0

    iget-object v6, v6, Landroid/webkit/WebView;->mPrivateHandler:Landroid/os/Handler;

    const/16 v7, 0x8d

    const/16 v8, 0x8

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    const-wide/16 v7, 0x320

    invoke-virtual {v5, v6, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 7769
    :cond_3b
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/webkit/WebView$PrivateHandler;->this$0:Landroid/webkit/WebView;

    move-object v5, v0

    invoke-static {v5}, Landroid/webkit/WebView;->access$11500(Landroid/webkit/WebView;)Landroid/webkit/WebView$WebTextSelectionListener;

    move-result-object v5

    invoke-interface {v5, v13}, Landroid/webkit/WebView$WebTextSelectionListener;->onSelectionChanged(I)V

    goto/16 :goto_0

    .line 7068
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_17
        0x7 -> :sswitch_18
        0x8 -> :sswitch_23
        0x9 -> :sswitch_24
        0xa -> :sswitch_2
        0x65 -> :sswitch_8
        0x66 -> :sswitch_6
        0x67 -> :sswitch_9
        0x68 -> :sswitch_7
        0x69 -> :sswitch_b
        0x6a -> :sswitch_12
        0x6b -> :sswitch_c
        0x6c -> :sswitch_d
        0x6d -> :sswitch_a
        0x6e -> :sswitch_11
        0x6f -> :sswitch_13
        0x70 -> :sswitch_f
        0x71 -> :sswitch_29
        0x72 -> :sswitch_19
        0x73 -> :sswitch_1b
        0x74 -> :sswitch_1a
        0x75 -> :sswitch_14
        0x76 -> :sswitch_21
        0x77 -> :sswitch_25
        0x78 -> :sswitch_26
        0x79 -> :sswitch_27
        0x7a -> :sswitch_28
        0x7b -> :sswitch_15
        0x7c -> :sswitch_16
        0x7d -> :sswitch_10
        0x7e -> :sswitch_22
        0x7f -> :sswitch_2a
        0x80 -> :sswitch_e
        0x81 -> :sswitch_2b
        0x82 -> :sswitch_2c
        0x83 -> :sswitch_2d
        0x84 -> :sswitch_2e
        0x85 -> :sswitch_2f
        0x8c -> :sswitch_30
        0x8d -> :sswitch_31
    .end sparse-switch

    .line 7454
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1c
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1d
        0x3 -> :sswitch_1e
        0x100 -> :sswitch_20
        0x200 -> :sswitch_1f
    .end sparse-switch
.end method
