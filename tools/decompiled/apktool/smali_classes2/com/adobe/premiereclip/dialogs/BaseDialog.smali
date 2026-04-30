.class public abstract Lcom/adobe/premiereclip/dialogs/BaseDialog;
.super Landroid/app/Dialog;
.source "BaseDialog.java"


# static fields
.field protected static volatile open:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 34
    return-void
.end method

.method public static isOpen()Z
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/adobe/premiereclip/dialogs/BaseDialog;->open:Z

    return v0
.end method


# virtual methods
.method public dismiss()V
    .locals 1

    .prologue
    .line 44
    invoke-super {p0}, Landroid/app/Dialog;->dismiss()V

    .line 45
    const/4 v0, 0x0

    sput-boolean v0, Lcom/adobe/premiereclip/dialogs/BaseDialog;->open:Z

    .line 46
    return-void
.end method

.method public show()V
    .locals 1

    .prologue
    .line 38
    invoke-super {p0}, Landroid/app/Dialog;->show()V

    .line 39
    const/4 v0, 0x1

    sput-boolean v0, Lcom/adobe/premiereclip/dialogs/BaseDialog;->open:Z

    .line 40
    return-void
.end method
