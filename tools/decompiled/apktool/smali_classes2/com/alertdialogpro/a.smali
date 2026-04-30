.class public Lcom/alertdialogpro/a;
.super Landroid/app/AlertDialog;
.source "AlertDialogPro.java"

# interfaces
.implements Landroid/content/DialogInterface;


# instance fields
.field private a:Lcom/alertdialogpro/internal/AlertController;


# direct methods
.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 29
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 22
    new-instance v0, Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {p0}, Lcom/alertdialogpro/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/alertdialogpro/a;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/alertdialogpro/internal/AlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    .line 30
    return-void
.end method

.method static a(Landroid/content/Context;I)I
    .locals 4

    .prologue
    .line 33
    const/high16 v0, 0x1000000

    if-lt p1, v0, :cond_0

    .line 40
    :goto_0
    return p1

    .line 36
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 37
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Lcom/alertdialogpro/e;->alertDialogProTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 40
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1}, Lcom/alertdialogpro/internal/AlertController;->b(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0}, Lcom/alertdialogpro/internal/AlertController;->b()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 166
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0}, Lcom/alertdialogpro/internal/AlertController;->a()V

    .line 167
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 171
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/alertdialogpro/internal/AlertController;->a(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 172
    const/4 v0, 0x1

    .line 173
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1, p2}, Lcom/alertdialogpro/internal/AlertController;->b(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    const/4 v0, 0x1

    .line 180
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/AlertDialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/alertdialogpro/internal/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 137
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/alertdialogpro/internal/AlertController;->a(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 122
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 77
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1}, Lcom/alertdialogpro/internal/AlertController;->b(Landroid/view/View;)V

    .line 78
    return-void
.end method

.method public setIcon(I)V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1}, Lcom/alertdialogpro/internal/AlertController;->a(I)V

    .line 147
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1}, Lcom/alertdialogpro/internal/AlertController;->a(Landroid/graphics/drawable/Drawable;)V

    .line 151
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3

    .prologue
    .line 159
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 160
    invoke-virtual {p0}, Lcom/alertdialogpro/a;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 161
    iget-object v1, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Lcom/alertdialogpro/internal/AlertController;->a(I)V

    .line 162
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1}, Lcom/alertdialogpro/internal/AlertController;->b(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 69
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1}, Lcom/alertdialogpro/internal/AlertController;->a(Ljava/lang/CharSequence;)V

    .line 71
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    invoke-virtual {v0, p1}, Lcom/alertdialogpro/internal/AlertController;->c(Landroid/view/View;)V

    .line 89
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6

    .prologue
    .line 103
    iget-object v0, p0, Lcom/alertdialogpro/a;->a:Lcom/alertdialogpro/internal/AlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/alertdialogpro/internal/AlertController;->a(Landroid/view/View;IIII)V

    .line 108
    return-void
.end method
