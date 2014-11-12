.class final Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;
.super Lcom/htc/widget/HtcAlertDialog;
.source "GlobalActions.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "GlobalActionsDialog"
.end annotation


# instance fields
.field private mCancelOnUp:Z

.field private final mContext:Landroid/content/Context;

.field private mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

.field private mIntercepted:Z

.field private final mWindowTouchSlop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/htc/app/HtcAlertController$AlertParams;)V
    .locals 1
    .parameter "context"
    .parameter "params"

    .prologue
    .line 1637
    invoke-direct {p0, p1}, Lcom/htc/widget/HtcAlertDialog;-><init>(Landroid/content/Context;)V

    .line 1638
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    .line 1639
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledWindowTouchSlop()I

    move-result v0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    .line 1640
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {p2, v0}, Lcom/htc/app/HtcAlertController$AlertParams;->apply(Lcom/htc/app/HtcAlertController;)V

    .line 1641
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .parameter "event"

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 1669
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v2, :cond_5

    .line 1670
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v8

    .line 1671
    .local v8, action:I
    if-nez v8, :cond_1

    .line 1672
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    .line 1673
    .local v9, decor:Landroid/view/View;
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    float-to-int v10, v2

    .line 1674
    .local v10, eventX:I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v11, v2

    .line 1675
    .local v11, eventY:I
    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v10, v2, :cond_0

    iget v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    neg-int v2, v2

    if-lt v11, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getWidth()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-ge v10, v2, :cond_0

    invoke-virtual {v9}, Landroid/view/View;->getHeight()I

    move-result v2

    iget v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mWindowTouchSlop:I

    add-int/2addr v2, v3

    if-lt v11, v2, :cond_1

    .line 1679
    :cond_0
    iput-boolean v13, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1683
    .end local v9           #decor:Landroid/view/View;
    .end local v10           #eventX:I
    .end local v11           #eventY:I
    :cond_1
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-nez v2, :cond_7

    .line 1684
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onInterceptTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1685
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    if-eqz v2, :cond_3

    .line 1688
    sget-boolean v2, Lcom/htc/htcjavaflag/HtcBuildFlag;->Htc_DEBUG_flag:Z

    if-eqz v2, :cond_2

    const-string v2, "GlobalActions"

    const-string v3, "InterceptTouchEvent"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1691
    :cond_2
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1692
    .local v0, now:J
    const/4 v4, 0x3

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-wide v2, v0

    invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;

    move-result-object p1

    .line 1694
    const/16 v2, 0x1002

    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->setSource(I)V

    .line 1695
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1701
    .end local v0           #now:J
    :cond_3
    if-ne v8, v13, :cond_5

    .line 1702
    iget-boolean v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v2, :cond_4

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1705
    :cond_4
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1706
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    .line 1710
    .end local v8           #action:I
    :cond_5
    invoke-super {p0, p1}, Lcom/htc/widget/HtcAlertDialog;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    :cond_6
    :goto_0
    return v2

    .line 1698
    .restart local v8       #action:I
    :cond_7
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v2, p1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onTouchEvent(Landroid/view/MotionEvent;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    .line 1701
    if-ne v8, v13, :cond_6

    .line 1702
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_8

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1705
    :cond_8
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1706
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    goto :goto_0

    .line 1701
    :catchall_0
    move-exception v2

    if-ne v8, v13, :cond_a

    .line 1702
    iget-boolean v3, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    if-eqz v3, :cond_9

    .line 1703
    invoke-virtual {p0}, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->cancel()V

    .line 1705
    :cond_9
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mCancelOnUp:Z

    .line 1706
    iput-boolean v12, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mIntercepted:Z

    :cond_a
    throw v2
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 1714
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0}, Lcom/htc/app/HtcAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1719
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1720
    const/4 v0, 0x1

    .line 1722
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 1727
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mAlert:Lcom/htc/app/HtcAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/htc/app/HtcAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1728
    const/4 v0, 0x1

    .line 1730
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Lcom/htc/widget/HtcAlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onStart()V
    .locals 2

    .prologue
    .line 1649
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->canEnableAccessibilityViaGesture(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1650
    new-instance v0, Lcom/android/internal/policy/impl/EnableAccessibilityController;

    iget-object v1, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/policy/impl/EnableAccessibilityController;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1651
    const/4 v0, 0x0

    invoke-super {p0, v0}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 1656
    :goto_0
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStart()V

    .line 1657
    return-void

    .line 1653
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    .line 1654
    const/4 v0, 0x1

    invoke-super {p0, v0}, Lcom/htc/widget/HtcAlertDialog;->setCanceledOnTouchOutside(Z)V

    goto :goto_0
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    if-eqz v0, :cond_0

    .line 1662
    iget-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$GlobalActionsDialog;->mEnableAccessibilityController:Lcom/android/internal/policy/impl/EnableAccessibilityController;

    invoke-virtual {v0}, Lcom/android/internal/policy/impl/EnableAccessibilityController;->onDestroy()V

    .line 1664
    :cond_0
    invoke-super {p0}, Lcom/htc/widget/HtcAlertDialog;->onStop()V

    .line 1665
    return-void
.end method
