.class Landroid/inputmethodservice/IInputMethodWrapper;
.super Lcom/android/internal/view/IInputMethod$Stub;
.source "IInputMethodWrapper.java"

# interfaces
.implements Lcom/android/internal/os/HandlerCaller$Callback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;,
        Landroid/inputmethodservice/IInputMethodWrapper$Notifier;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final DO_ATTACH_TOKEN:I = 0xa

.field private static final DO_CREATE_SESSION:I = 0x28

.field private static final DO_DUMP:I = 0x1

.field private static final DO_HIDE_CURSOR_HANDLE_IN_EXTRACT_EDIT_TEXT:I = 0xc8

.field private static final DO_HIDE_SOFT_INPUT:I = 0x46

.field private static final DO_RESTART_INPUT:I = 0x22

.field private static final DO_REVOKE_SESSION:I = 0x32

.field private static final DO_SET_INPUT_CONTEXT:I = 0x14

.field private static final DO_SET_SESSION_ENABLED:I = 0x2d

.field private static final DO_SHOW_SOFT_INPUT:I = 0x3c

.field private static final DO_START_INPUT:I = 0x20

.field private static final DO_UNSET_INPUT_CONTEXT:I = 0x1e

.field private static final TAG:Ljava/lang/String; = "InputMethodWrapper"


# instance fields
.field final mCaller:Lcom/android/internal/os/HandlerCaller;

.field final mInputMethod:Landroid/view/inputmethod/InputMethod;

.field final mTarget:Landroid/inputmethodservice/AbstractInputMethodService;


# direct methods
.method public constructor <init>(Landroid/inputmethodservice/AbstractInputMethodService;Landroid/view/inputmethod/InputMethod;)V
    .locals 1
    .parameter "context"
    .parameter "inputMethod"

    .prologue
    .line 101
    invoke-direct {p0}, Lcom/android/internal/view/IInputMethod$Stub;-><init>()V

    .line 102
    iput-object p1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Landroid/inputmethodservice/AbstractInputMethodService;

    .line 103
    new-instance v0, Lcom/android/internal/os/HandlerCaller;

    invoke-direct {v0, p1, p0}, Lcom/android/internal/os/HandlerCaller;-><init>(Landroid/content/Context;Lcom/android/internal/os/HandlerCaller$Callback;)V

    iput-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    .line 104
    iput-object p2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    .line 105
    return-void
.end method


# virtual methods
.method public attachToken(Landroid/os/IBinder;)V
    .locals 3
    .parameter "token"

    .prologue
    .line 207
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xa

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 208
    return-void
.end method

.method public bindInput(Landroid/view/inputmethod/InputBinding;)V
    .locals 5
    .parameter "binding"

    .prologue
    .line 211
    new-instance v0, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-virtual {p1}, Landroid/view/inputmethod/InputBinding;->getConnectionToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/view/IInputContext$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/view/IInputContext;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    .line 213
    .local v0, ic:Landroid/view/inputmethod/InputConnection;
    new-instance v1, Landroid/view/inputmethod/InputBinding;

    invoke-direct {v1, v0, p1}, Landroid/view/inputmethod/InputBinding;-><init>(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/InputBinding;)V

    .line 214
    .local v1, nu:Landroid/view/inputmethod/InputBinding;
    iget-object v2, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v4, 0x14

    invoke-virtual {v3, v4, v1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 215
    return-void
.end method

.method public createSession(Lcom/android/internal/view/IInputMethodCallback;)V
    .locals 3
    .parameter "callback"

    .prologue
    .line 232
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x28

    invoke-virtual {v1, v2, p1}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 233
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "fout"
    .parameter "args"

    .prologue
    const/4 v1, 0x1

    .line 185
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Landroid/inputmethodservice/AbstractInputMethodService;

    const-string v2, "android.permission.DUMP"

    invoke-virtual {v0, v2}, Landroid/inputmethodservice/AbstractInputMethodService;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: can\'t dump InputMethodManager from from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 204
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    new-instance v5, Ljava/util/concurrent/CountDownLatch;

    invoke-direct {v5, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 195
    .local v5, latch:Ljava/util/concurrent/CountDownLatch;
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOOOO(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v7, v0}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 198
    const-wide/16 v0, 0x5

    :try_start_0
    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v5, v0, v1, v2}, Ljava/util/concurrent/CountDownLatch;->await(JLjava/util/concurrent/TimeUnit;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 199
    const-string v0, "Timeout waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 201
    :catch_0
    move-exception v0

    move-object v6, v0

    .line 202
    .local v6, e:Ljava/lang/InterruptedException;
    const-string v0, "Interrupted waiting for dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public executeMessage(Landroid/os/Message;)V
    .locals 8
    .parameter "msg"

    .prologue
    const/4 v6, 0x0

    .line 112
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    .line 181
    const-string v5, "InputMethodWrapper"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unhandled message code: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, p1, Landroid/os/Message;->what:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    .end local p0
    :cond_0
    :goto_0
    return-void

    .line 114
    .restart local p0
    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 116
    .local v0, args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    :try_start_0
    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mTarget:Landroid/inputmethodservice/AbstractInputMethodService;

    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    .end local p0
    check-cast p0, Ljava/io/FileDescriptor;

    iget-object v5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast v5, Ljava/io/PrintWriter;

    iget-object v6, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg3:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    check-cast v6, [Ljava/lang/String;

    invoke-virtual {v7, p0, v5, v6}, Landroid/inputmethodservice/AbstractInputMethodService;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 121
    :goto_1
    iget-object v5, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    monitor-enter v5

    .line 122
    :try_start_1
    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg4:Ljava/lang/Object;

    check-cast p0, Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {p0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 123
    monitor-exit v5

    goto :goto_0

    :catchall_0
    move-exception v6

    monitor-exit v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v6

    .line 118
    :catch_0
    move-exception v5

    move-object v1, v5

    .line 119
    .local v1, e:Ljava/lang/RuntimeException;
    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    check-cast p0, Ljava/io/PrintWriter;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1

    .line 128
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v1           #e:Ljava/lang/RuntimeException;
    .restart local p0
    :sswitch_1
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/IBinder;

    invoke-interface {v5, p0}, Landroid/view/inputmethod/InputMethod;->attachToken(Landroid/os/IBinder;)V

    goto :goto_0

    .line 132
    .restart local p0
    :sswitch_2
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputBinding;

    invoke-interface {v5, p0}, Landroid/view/inputmethod/InputMethod;->bindInput(Landroid/view/inputmethod/InputBinding;)V

    goto :goto_0

    .line 136
    .restart local p0
    :sswitch_3
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    invoke-interface {v5}, Landroid/view/inputmethod/InputMethod;->unbindInput()V

    goto :goto_0

    .line 139
    :sswitch_4
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 140
    .restart local v0       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContext;

    .line 141
    .local v3, inputContext:Lcom/android/internal/view/IInputContext;
    if-eqz v3, :cond_1

    new-instance v5, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-direct {v5, v3}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    move-object v2, v5

    .line 143
    .local v2, ic:Landroid/view/inputmethod/InputConnection;
    :goto_2
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v5, v2, p0}, Landroid/view/inputmethod/InputMethod;->startInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto :goto_0

    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :cond_1
    move-object v2, v6

    .line 141
    goto :goto_2

    .line 147
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v3           #inputContext:Lcom/android/internal/view/IInputContext;
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;

    .line 148
    .restart local v0       #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    iget-object v3, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg1:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/view/IInputContext;

    .line 149
    .restart local v3       #inputContext:Lcom/android/internal/view/IInputContext;
    if-eqz v3, :cond_2

    new-instance v5, Lcom/android/internal/view/InputConnectionWrapper;

    invoke-direct {v5, v3}, Lcom/android/internal/view/InputConnectionWrapper;-><init>(Lcom/android/internal/view/IInputContext;)V

    move-object v2, v5

    .line 151
    .restart local v2       #ic:Landroid/view/inputmethod/InputConnection;
    :goto_3
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, v0, Lcom/android/internal/os/HandlerCaller$SomeArgs;->arg2:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/EditorInfo;

    invoke-interface {v5, v2, p0}, Landroid/view/inputmethod/InputMethod;->restartInput(Landroid/view/inputmethod/InputConnection;Landroid/view/inputmethod/EditorInfo;)V

    goto/16 :goto_0

    .end local v2           #ic:Landroid/view/inputmethod/InputConnection;
    .restart local p0
    :cond_2
    move-object v2, v6

    .line 149
    goto :goto_3

    .line 155
    .end local v0           #args:Lcom/android/internal/os/HandlerCaller$SomeArgs;
    .end local v3           #inputContext:Lcom/android/internal/view/IInputContext;
    :sswitch_6
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    new-instance v6, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;

    iget-object v7, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v7, v7, Lcom/android/internal/os/HandlerCaller;->mContext:Landroid/content/Context;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Lcom/android/internal/view/IInputMethodCallback;

    invoke-direct {v6, v7, p0}, Landroid/inputmethodservice/IInputMethodWrapper$InputMethodSessionCallbackWrapper;-><init>(Landroid/content/Context;Lcom/android/internal/view/IInputMethodCallback;)V

    invoke-interface {v5, v6}, Landroid/view/inputmethod/InputMethod;->createSession(Landroid/view/inputmethod/InputMethod$SessionCallback;)V

    goto/16 :goto_0

    .line 160
    .restart local p0
    :sswitch_7
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodSession;

    iget v6, p1, Landroid/os/Message;->arg1:I

    if-eqz v6, :cond_3

    const/4 v6, 0x1

    :goto_4
    invoke-interface {v5, p0, v6}, Landroid/view/inputmethod/InputMethod;->setSessionEnabled(Landroid/view/inputmethod/InputMethodSession;Z)V

    goto/16 :goto_0

    :cond_3
    const/4 v6, 0x0

    goto :goto_4

    .line 164
    .restart local p0
    :sswitch_8
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/view/inputmethod/InputMethodSession;

    invoke-interface {v5, p0}, Landroid/view/inputmethod/InputMethod;->revokeSession(Landroid/view/inputmethod/InputMethodSession;)V

    goto/16 :goto_0

    .line 167
    .restart local p0
    :sswitch_9
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/ResultReceiver;

    invoke-interface {v5, v6, p0}, Landroid/view/inputmethod/InputMethod;->showSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 170
    .restart local p0
    :sswitch_a
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    iget v6, p1, Landroid/os/Message;->arg1:I

    iget-object p0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .end local p0
    check-cast p0, Landroid/os/ResultReceiver;

    invoke-interface {v5, v6, p0}, Landroid/view/inputmethod/InputMethod;->hideSoftInput(ILandroid/os/ResultReceiver;)V

    goto/16 :goto_0

    .line 174
    .restart local p0
    :sswitch_b
    iget-object v5, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    instance-of v5, v5, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    if-eqz v5, :cond_0

    .line 176
    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    check-cast v4, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;

    .line 177
    .local v4, inputMethodImpl:Landroid/inputmethodservice/InputMethodService$InputMethodImpl;
    invoke-virtual {v4}, Landroid/inputmethodservice/InputMethodService$InputMethodImpl;->hideCursorHandleInExtractEditText()V

    goto/16 :goto_0

    .line 112
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0xa -> :sswitch_1
        0x14 -> :sswitch_2
        0x1e -> :sswitch_3
        0x20 -> :sswitch_4
        0x22 -> :sswitch_5
        0x28 -> :sswitch_6
        0x2d -> :sswitch_7
        0x32 -> :sswitch_8
        0x3c -> :sswitch_9
        0x46 -> :sswitch_a
        0xc8 -> :sswitch_b
    .end sparse-switch
.end method

.method public getInternalInputMethod()Landroid/view/inputmethod/InputMethod;
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mInputMethod:Landroid/view/inputmethod/InputMethod;

    return-object v0
.end method

.method public hideCursorHandleInExtractEditText()V
    .locals 3

    .prologue
    .line 268
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0xc8

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 269
    return-void
.end method

.method public hideSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 262
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 264
    return-void
.end method

.method public restartInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .parameter "inputContext"
    .parameter "attribute"

    .prologue
    .line 227
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x22

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 229
    return-void
.end method

.method public revokeSession(Lcom/android/internal/view/IInputMethodSession;)V
    .locals 6
    .parameter "session"

    .prologue
    .line 248
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 250
    .local v2, ls:Landroid/view/inputmethod/InputMethodSession;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x32

    invoke-virtual {v4, v5, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageO(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :goto_0
    return-void

    .line 251
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 252
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSessionEnabled(Lcom/android/internal/view/IInputMethodSession;Z)V
    .locals 7
    .parameter "session"
    .parameter "enabled"

    .prologue
    .line 237
    :try_start_0
    move-object v0, p1

    check-cast v0, Landroid/inputmethodservice/IInputMethodSessionWrapper;

    move-object v3, v0

    invoke-virtual {v3}, Landroid/inputmethodservice/IInputMethodSessionWrapper;->getInternalInputMethodSession()Landroid/view/inputmethod/InputMethodSession;

    move-result-object v2

    .line 239
    .local v2, ls:Landroid/view/inputmethod/InputMethodSession;
    iget-object v3, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v4, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v5, 0x2d

    if-eqz p2, :cond_0

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v4, v5, v6, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 244
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :goto_1
    return-void

    .line 239
    .restart local v2       #ls:Landroid/view/inputmethod/InputMethodSession;
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 241
    .end local v2           #ls:Landroid/view/inputmethod/InputMethodSession;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 242
    .local v1, e:Ljava/lang/ClassCastException;
    const-string v3, "InputMethodWrapper"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Incoming session not of correct type: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public showSoftInput(ILandroid/os/ResultReceiver;)V
    .locals 3
    .parameter "flags"
    .parameter "resultReceiver"

    .prologue
    .line 257
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageIO(IILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 259
    return-void
.end method

.method public startInput(Lcom/android/internal/view/IInputContext;Landroid/view/inputmethod/EditorInfo;)V
    .locals 3
    .parameter "inputContext"
    .parameter "attribute"

    .prologue
    .line 222
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x20

    invoke-virtual {v1, v2, p1, p2}, Lcom/android/internal/os/HandlerCaller;->obtainMessageOO(ILjava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 224
    return-void
.end method

.method public unbindInput()V
    .locals 3

    .prologue
    .line 218
    iget-object v0, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    iget-object v1, p0, Landroid/inputmethodservice/IInputMethodWrapper;->mCaller:Lcom/android/internal/os/HandlerCaller;

    const/16 v2, 0x1e

    invoke-virtual {v1, v2}, Lcom/android/internal/os/HandlerCaller;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/os/HandlerCaller;->executeOrSendMessage(Landroid/os/Message;)V

    .line 219
    return-void
.end method
