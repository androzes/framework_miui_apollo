.class public Lcom/android/internal/view/InputConnectionWrapper;
.super Ljava/lang/Object;
.source "InputConnectionWrapper.java"

# interfaces
.implements Landroid/view/inputmethod/InputConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    }
.end annotation


# static fields
.field private static final MAX_WAIT_TIME_MILLIS:I = 0x7d0


# instance fields
.field private final mIInputContext:Lcom/android/internal/view/IInputContext;


# direct methods
.method public constructor <init>(Lcom/android/internal/view/IInputContext;)V
    .locals 0
    .parameter "inputContext"

    .prologue
    .line 166
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    iput-object p1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    .line 168
    return-void
.end method


# virtual methods
.method public beginBatchEdit()Z
    .locals 2

    .prologue
    .line 307
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->beginBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 308
    const/4 v1, 0x1

    .line 310
    :goto_0
    return v1

    .line 309
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 310
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public clearMetaKeyStates(I)Z
    .locals 2
    .parameter "states"

    .prologue
    .line 334
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->clearMetaKeyStates(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 335
    const/4 v1, 0x1

    .line 337
    :goto_0
    return v1

    .line 336
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 337
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public commitCompletion(Landroid/view/inputmethod/CompletionInfo;)Z
    .locals 2
    .parameter "text"

    .prologue
    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->commitCompletion(Landroid/view/inputmethod/CompletionInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    const/4 v1, 0x1

    .line 256
    :goto_0
    return v1

    .line 255
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 256
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public commitText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 244
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->commitText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    const/4 v1, 0x1

    .line 247
    :goto_0
    return v1

    .line 246
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 247
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public deleteSurroundingText(II)Z
    .locals 2
    .parameter "leftLength"
    .parameter "rightLength"

    .prologue
    .line 343
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->deleteSurroundingText(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 344
    const/4 v1, 0x1

    .line 346
    :goto_0
    return v1

    .line 345
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 346
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public endBatchEdit()Z
    .locals 2

    .prologue
    .line 316
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->endBatchEdit()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 317
    const/4 v1, 0x1

    .line 319
    :goto_0
    return v1

    .line 318
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 319
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public finishComposingText()Z
    .locals 2

    .prologue
    .line 298
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1}, Lcom/android/internal/view/IInputContext;->finishComposingText()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    const/4 v1, 0x1

    .line 301
    :goto_0
    return v1

    .line 300
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 301
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getCursorCapsMode(I)I
    .locals 5
    .parameter "reqModes"

    .prologue
    .line 207
    const/4 v2, 0x0

    .line 209
    .local v2, value:I
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 210
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, v4, v0}, Lcom/android/internal/view/IInputContext;->getCursorCapsMode(IILcom/android/internal/view/IInputContextCallback;)V

    .line 211
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 212
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 213
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    .line 214
    iget v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mCursorCapsMode:I

    .line 216
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 217
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move v3, v2

    .line 221
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return v3

    .line 216
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 218
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 219
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;I)Landroid/view/inputmethod/ExtractedText;
    .locals 5
    .parameter "request"
    .parameter "flags"

    .prologue
    .line 225
    const/4 v2, 0x0

    .line 227
    .local v2, value:Landroid/view/inputmethod/ExtractedText;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 228
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getExtractedText(Landroid/view/inputmethod/ExtractedTextRequest;IILcom/android/internal/view/IInputContextCallback;)V

    .line 229
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 230
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 231
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    .line 232
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mExtractedText:Landroid/view/inputmethod/ExtractedText;

    .line 234
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 235
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .line 239
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return-object v3

    .line 234
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 236
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 237
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTextAfterCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 171
    const/4 v2, 0x0

    .line 173
    .local v2, value:Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 174
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextAfterCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 175
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 177
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    .line 178
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextAfterCursor:Ljava/lang/CharSequence;

    .line 180
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 181
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .line 185
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return-object v3

    .line 180
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 182
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 183
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public getTextBeforeCursor(II)Ljava/lang/CharSequence;
    .locals 5
    .parameter "length"
    .parameter "flags"

    .prologue
    .line 189
    const/4 v2, 0x0

    .line 191
    .local v2, value:Ljava/lang/CharSequence;
    :try_start_0
    invoke-static {}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$000()Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;

    move-result-object v0

    .line 192
    .local v0, callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    iget-object v3, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    iget v4, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mSeq:I

    invoke-interface {v3, p1, p2, v4, v0}, Lcom/android/internal/view/IInputContext;->getTextBeforeCursor(IIILcom/android/internal/view/IInputContextCallback;)V

    .line 193
    monitor-enter v0
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 194
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->waitForResultLocked()V

    .line 195
    iget-boolean v3, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mHaveValue:Z

    if-eqz v3, :cond_0

    .line 196
    iget-object v2, v0, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->mTextBeforeCursor:Ljava/lang/CharSequence;

    .line 198
    :cond_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    :try_start_2
    invoke-static {v0}, Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;->access$100(Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    move-object v3, v2

    .line 203
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :goto_0
    return-object v3

    .line 198
    .restart local v0       #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catchall_0
    move-exception v3

    :try_start_3
    monitor-exit v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v3
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_0

    .line 200
    .end local v0           #callback:Lcom/android/internal/view/InputConnectionWrapper$InputContextCallback;
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 201
    .local v1, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public performContextMenuAction(I)Z
    .locals 2
    .parameter "id"

    .prologue
    .line 280
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performContextMenuAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 281
    const/4 v1, 0x1

    .line 283
    :goto_0
    return v1

    .line 282
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 283
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performEditorAction(I)Z
    .locals 2
    .parameter "actionCode"

    .prologue
    .line 271
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->performEditorAction(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 272
    const/4 v1, 0x1

    .line 274
    :goto_0
    return v1

    .line 273
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 274
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 2
    .parameter "action"
    .parameter "data"

    .prologue
    .line 361
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->performPrivateCommand(Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 362
    const/4 v1, 0x1

    .line 364
    :goto_0
    return v1

    .line 363
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 364
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportFullscreenMode(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 352
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->reportFullscreenMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    const/4 v1, 0x1

    .line 355
    :goto_0
    return v1

    .line 354
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 355
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public reportIsSoftInputMethodShowing(Z)Z
    .locals 2
    .parameter "enabled"

    .prologue
    .line 372
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->reportIsSoftInputMethodShowing(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 373
    const/4 v1, 0x1

    .line 375
    :goto_0
    return v1

    .line 374
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 375
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public sendKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 2
    .parameter "event"

    .prologue
    .line 325
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1}, Lcom/android/internal/view/IInputContext;->sendKeyEvent(Landroid/view/KeyEvent;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    const/4 v1, 0x1

    .line 328
    :goto_0
    return v1

    .line 327
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 328
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setComposingText(Ljava/lang/CharSequence;I)Z
    .locals 2
    .parameter "text"
    .parameter "newCursorPosition"

    .prologue
    .line 289
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setComposingText(Ljava/lang/CharSequence;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    const/4 v1, 0x1

    .line 292
    :goto_0
    return v1

    .line 291
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 292
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setSelection(II)Z
    .locals 2
    .parameter "start"
    .parameter "end"

    .prologue
    .line 262
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/view/InputConnectionWrapper;->mIInputContext:Lcom/android/internal/view/IInputContext;

    invoke-interface {v1, p1, p2}, Lcom/android/internal/view/IInputContext;->setSelection(II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 263
    const/4 v1, 0x1

    .line 265
    :goto_0
    return v1

    .line 264
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 265
    .local v0, e:Landroid/os/RemoteException;
    const/4 v1, 0x0

    goto :goto_0
.end method
