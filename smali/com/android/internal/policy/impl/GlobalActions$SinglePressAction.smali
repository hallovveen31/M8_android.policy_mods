.class abstract Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/GlobalActions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "SinglePressAction"
.end annotation


# instance fields
.field private final mIcon:Landroid/graphics/drawable/Drawable;

.field private final mIconResId:I

.field private final mMessage:Ljava/lang/CharSequence;

.field private final mMessageResId:I

.field private final mStatusResId:I


# direct methods
.method protected constructor <init>(II)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"

    .prologue
    const/4 v0, 0x0

    .line 976
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 977
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 978
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 979
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 980
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 981
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 982
    return-void
.end method

.method protected constructor <init>(III)V
    .locals 1
    .parameter "iconResId"
    .parameter "messageResId"
    .parameter "statusResId"

    .prologue
    const/4 v0, 0x0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1001
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 1002
    iput p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 1003
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 1004
    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 1005
    iput p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 1006
    return-void
.end method

.method protected constructor <init>(ILandroid/graphics/drawable/Drawable;Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "iconResId"
    .parameter "icon"
    .parameter "message"

    .prologue
    const/4 v0, 0x0

    .line 984
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 985
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 986
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 987
    iput-object p3, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 988
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 989
    iput v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 990
    return-void
.end method

.method protected constructor <init>(ILjava/lang/CharSequence;)V
    .locals 2
    .parameter "iconResId"
    .parameter "message"

    .prologue
    const/4 v1, 0x0

    .line 992
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 993
    iput p1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    .line 994
    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    .line 995
    iput-object p2, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    .line 996
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 997
    iput v1, p0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    .line 998
    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 26
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    .line 1020
    const/16 v21, 0x0

    .line 1023
    .local v21, v:Landroid/view/View;
    const/4 v11, 0x1

    .line 1027
    .local v11, hasStatus:Z
    const/4 v12, 0x0

    .line 1029
    .local v12, icon:Lcom/htc/widget/HtcListItemColorIcon;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    move/from16 v23, v0

    if-nez v23, :cond_0

    const/4 v11, 0x0

    .line 1031
    :cond_0
    const v23, 0x3030007

    const/16 v24, 0x0

    move-object/from16 v0, p4

    move/from16 v1, v23

    move-object/from16 v2, p3

    move/from16 v3, v24

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v21

    .line 1033
    const v23, 0x311000d

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    .end local v12           #icon:Lcom/htc/widget/HtcListItemColorIcon;
    check-cast v12, Lcom/htc/widget/HtcListItemColorIcon;

    .line 1035
    .restart local v12       #icon:Lcom/htc/widget/HtcListItemColorIcon;
    const v23, 0x311000e

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Lcom/htc/widget/HtcListItem2LineText;

    .line 1037
    .local v10, description:Lcom/htc/widget/HtcListItem2LineText;
    if-eqz v12, :cond_1

    .line 1038
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v23

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mIconResId:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemColorIcon;->setColorIconImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1040
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v12, v0}, Lcom/htc/widget/HtcListItemColorIcon;->setEnabled(Z)V

    .line 1043
    :cond_1
    if-eqz v10, :cond_2

    .line 1044
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    if-eqz v23, :cond_6

    .line 1045
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessage:Ljava/lang/CharSequence;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(Ljava/lang/CharSequence;)V

    .line 1050
    :goto_0
    if-eqz v11, :cond_7

    .line 1051
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mStatusResId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryText(I)V

    .line 1052
    const/16 v23, 0x0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    .line 1058
    :goto_1
    const/16 v23, 0x1

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setEnabled(Z)V

    .line 1062
    :cond_2
    if-eqz v21, :cond_3

    const/16 v23, 0x1

    move-object/from16 v0, v21

    move/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/view/View;->setEnabled(Z)V

    .line 1067
    :cond_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v5

    .line 1069
    .local v5, am:Landroid/app/IActivityManager;
    :try_start_0
    invoke-interface {v5}, Landroid/app/IActivityManager;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    .line 1070
    .local v7, config:Landroid/content/res/Configuration;
    iget-object v0, v7, Landroid/content/res/Configuration;->skin:Ljava/lang/String;

    move-object/from16 v18, v0

    .line 1072
    .local v18, skinPackage:Ljava/lang/String;
    invoke-static {}, Lcom/htc/customization/HtcCustomizationManager;->getInstance()Lcom/htc/customization/HtcCustomizationManager;

    move-result-object v8

    .line 1073
    .local v8, custManager:Lcom/htc/customization/HtcCustomizationManager;
    const-string v23, "System"

    const/16 v24, 0x1

    const/16 v25, 0x0

    move-object/from16 v0, v23

    move/from16 v1, v24

    move/from16 v2, v25

    invoke-virtual {v8, v0, v1, v2}, Lcom/htc/customization/HtcCustomizationManager;->getCustomizationReader(Ljava/lang/String;IZ)Lcom/htc/customization/HtcCustomizationReader;

    move-result-object v9

    .line 1074
    .local v9, custReader:Lcom/htc/customization/HtcCustomizationReader;
    const-string v23, "sense_version"

    const-string v24, "5.0"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-interface {v9, v0, v1}, Lcom/htc/customization/HtcCustomizationReader;->readString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 1075
    .local v17, senseV:Ljava/lang/String;
    invoke-static/range {v17 .. v17}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v22

    .line 1077
    .local v22, version:F
    const/high16 v23, 0x4080

    cmpl-float v23, v22, v23

    if-ltz v23, :cond_5

    .line 1079
    const-string v23, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-nez v23, :cond_4

    const-string v23, "default"

    move-object/from16 v0, v18

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v23

    if-eqz v23, :cond_8

    .line 1080
    :cond_4
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v15

    .line 1081
    .local v15, res:Landroid/content/res/Resources;
    const-string v23, "common_list_item_background"

    const-string v24, "drawable"

    const-string v25, "com.htc"

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    move-object/from16 v2, v25

    invoke-virtual {v15, v0, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1082
    .local v4, BGId:I
    invoke-virtual {v15, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    .line 1089
    .end local v15           #res:Landroid/content/res/Resources;
    .local v14, listItemBG:Landroid/graphics/drawable/Drawable;
    :goto_2
    if-eqz v21, :cond_5

    if-eqz v14, :cond_5

    .line 1090
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingLeft()I

    move-result v13

    .line 1091
    .local v13, leftPadding:I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingTop()I

    move-result v20

    .line 1092
    .local v20, topPadding:I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingRight()I

    move-result v16

    .line 1093
    .local v16, rightPadding:I
    invoke-virtual/range {v21 .. v21}, Landroid/view/View;->getPaddingBottom()I

    move-result v6

    .line 1094
    .local v6, bottomPadding:I
    move-object/from16 v0, v21

    invoke-virtual {v0, v14}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1095
    move-object/from16 v0, v21

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-virtual {v0, v13, v1, v2, v6}, Landroid/view/View;->setPadding(IIII)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1104
    .end local v4           #BGId:I
    .end local v6           #bottomPadding:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v8           #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .end local v9           #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .end local v13           #leftPadding:I
    .end local v14           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v16           #rightPadding:I
    .end local v17           #senseV:Ljava/lang/String;
    .end local v18           #skinPackage:Ljava/lang/String;
    .end local v20           #topPadding:I
    .end local v22           #version:F
    :cond_5
    :goto_3
    return-object v21

    .line 1047
    .end local v5           #am:Landroid/app/IActivityManager;
    :cond_6
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/policy/impl/GlobalActions$SinglePressAction;->mMessageResId:I

    move/from16 v23, v0

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setPrimaryText(I)V

    goto/16 :goto_0

    .line 1054
    :cond_7
    const/16 v23, 0x8

    move/from16 v0, v23

    invoke-virtual {v10, v0}, Lcom/htc/widget/HtcListItem2LineText;->setSecondaryTextVisibility(I)V

    goto/16 :goto_1

    .line 1084
    .restart local v5       #am:Landroid/app/IActivityManager;
    .restart local v7       #config:Landroid/content/res/Configuration;
    .restart local v8       #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .restart local v9       #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .restart local v17       #senseV:Ljava/lang/String;
    .restart local v18       #skinPackage:Ljava/lang/String;
    .restart local v22       #version:F
    :cond_8
    :try_start_1
    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v19

    .line 1085
    .local v19, themeres:Landroid/content/res/Resources;
    const-string v23, "common_list_item_background"

    const-string v24, "drawable"

    move-object/from16 v0, v19

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    move-object/from16 v3, v18

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1086
    .restart local v4       #BGId:I
    move-object/from16 v0, v19

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v14

    .restart local v14       #listItemBG:Landroid/graphics/drawable/Drawable;
    goto :goto_2

    .line 1099
    .end local v4           #BGId:I
    .end local v7           #config:Landroid/content/res/Configuration;
    .end local v8           #custManager:Lcom/htc/customization/HtcCustomizationManager;
    .end local v9           #custReader:Lcom/htc/customization/HtcCustomizationReader;
    .end local v14           #listItemBG:Landroid/graphics/drawable/Drawable;
    .end local v17           #senseV:Ljava/lang/String;
    .end local v18           #skinPackage:Ljava/lang/String;
    .end local v19           #themeres:Landroid/content/res/Resources;
    .end local v22           #version:F
    :catch_0
    move-exception v23

    goto :goto_3
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1009
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1015
    const/4 v0, 0x0

    return v0
.end method

.method public abstract onPress()V
.end method
