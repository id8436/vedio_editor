.class Lg/a/a/a/g;
.super Lg/a/a/a/i;
.source "CalligraphyLayoutInflater.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field private final c:Lg/a/a/a/f;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lg/a/a/a/f;Lg/a/a/a/d;)V
    .locals 0

    .prologue
    .line 295
    invoke-direct {p0, p1, p3}, Lg/a/a/a/i;-><init>(Landroid/view/LayoutInflater$Factory2;Lg/a/a/a/d;)V

    .line 296
    iput-object p2, p0, Lg/a/a/a/g;->c:Lg/a/a/a/f;

    .line 297
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 7

    .prologue
    .line 301
    iget-object v6, p0, Lg/a/a/a/g;->b:Lg/a/a/a/d;

    iget-object v0, p0, Lg/a/a/a/g;->c:Lg/a/a/a/f;

    iget-object v1, p0, Lg/a/a/a/g;->a:Landroid/view/LayoutInflater$Factory2;

    .line 303
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v2

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    .line 302
    invoke-static/range {v0 .. v5}, Lg/a/a/a/f;->a(Lg/a/a/a/f;Landroid/view/View;Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    .line 301
    invoke-virtual {v6, v0, p3, p4}, Lg/a/a/a/d;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
