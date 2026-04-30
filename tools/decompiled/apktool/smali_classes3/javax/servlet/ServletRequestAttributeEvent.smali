.class public Ljavax/servlet/ServletRequestAttributeEvent;
.super Ljavax/servlet/ServletRequestEvent;
.source "ServletRequestAttributeEvent.java"


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1, p2}, Ljavax/servlet/ServletRequestEvent;-><init>(Ljavax/servlet/ServletContext;Ljavax/servlet/ServletRequest;)V

    .line 53
    iput-object p3, p0, Ljavax/servlet/ServletRequestAttributeEvent;->name:Ljava/lang/String;

    .line 54
    iput-object p4, p0, Ljavax/servlet/ServletRequestAttributeEvent;->value:Ljava/lang/Object;

    .line 55
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Ljavax/servlet/ServletRequestAttributeEvent;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Ljavax/servlet/ServletRequestAttributeEvent;->value:Ljava/lang/Object;

    return-object v0
.end method
