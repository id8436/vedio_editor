.class Lg/a/a/a/i;
.super Ljava/lang/Object;
.source "CalligraphyLayoutInflater.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xb
.end annotation


# instance fields
.field protected final a:Landroid/view/LayoutInflater$Factory2;

.field protected final b:Lg/a/a/a/d;


# direct methods
.method public constructor <init>(Landroid/view/LayoutInflater$Factory2;Lg/a/a/a/d;)V
    .locals 0

    .prologue
    .line 265
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 266
    iput-object p1, p0, Lg/a/a/a/i;->a:Landroid/view/LayoutInflater$Factory2;

    .line 267
    iput-object p2, p0, Lg/a/a/a/i;->b:Lg/a/a/a/d;

    .line 268
    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 279
    iget-object v0, p0, Lg/a/a/a/i;->b:Lg/a/a/a/d;

    iget-object v1, p0, Lg/a/a/a/i;->a:Landroid/view/LayoutInflater$Factory2;

    .line 280
    invoke-interface {v1, p1, p2, p3, p4}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 279
    invoke-virtual {v0, v1, p3, p4}, Lg/a/a/a/d;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 2

    .prologue
    .line 272
    iget-object v0, p0, Lg/a/a/a/i;->b:Lg/a/a/a/d;

    iget-object v1, p0, Lg/a/a/a/i;->a:Landroid/view/LayoutInflater$Factory2;

    .line 273
    invoke-interface {v1, p1, p2, p3}, Landroid/view/LayoutInflater$Factory2;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v1

    .line 272
    invoke-virtual {v0, v1, p2, p3}, Lg/a/a/a/d;->a(Landroid/view/View;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
