.class Lcom/alertdialogpro/material/a/c;
.super Lcom/g/b/c;
.source "CircularAnimatedDrawable.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/g/b/c",
        "<",
        "Lcom/alertdialogpro/material/a/a;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/alertdialogpro/material/a/a;


# direct methods
.method constructor <init>(Lcom/alertdialogpro/material/a/a;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 108
    iput-object p1, p0, Lcom/alertdialogpro/material/a/c;->a:Lcom/alertdialogpro/material/a/a;

    invoke-direct {p0, p2, p3}, Lcom/g/b/c;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Lcom/alertdialogpro/material/a/a;)Ljava/lang/Float;
    .locals 1

    .prologue
    .line 111
    invoke-virtual {p1}, Lcom/alertdialogpro/material/a/a;->b()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 108
    check-cast p1, Lcom/alertdialogpro/material/a/a;

    invoke-virtual {p0, p1}, Lcom/alertdialogpro/material/a/c;->a(Lcom/alertdialogpro/material/a/a;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public a(Lcom/alertdialogpro/material/a/a;Ljava/lang/Float;)V
    .locals 1

    .prologue
    .line 116
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/alertdialogpro/material/a/a;->b(F)V

    .line 117
    return-void
.end method

.method public bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 108
    check-cast p1, Lcom/alertdialogpro/material/a/a;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/alertdialogpro/material/a/c;->a(Lcom/alertdialogpro/material/a/a;Ljava/lang/Float;)V

    return-void
.end method
