.class public final Lcom/dropbox/core/json/JsonReadException$PathPart;
.super Ljava/lang/Object;
.source "JsonReadException.java"


# instance fields
.field public final description:Ljava/lang/String;

.field public final next:Lcom/dropbox/core/json/JsonReadException$PathPart;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/dropbox/core/json/JsonReadException$PathPart;)V
    .locals 0

    .prologue
    .line 91
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 92
    iput-object p1, p0, Lcom/dropbox/core/json/JsonReadException$PathPart;->description:Ljava/lang/String;

    .line 93
    iput-object p2, p0, Lcom/dropbox/core/json/JsonReadException$PathPart;->next:Lcom/dropbox/core/json/JsonReadException$PathPart;

    .line 94
    return-void
.end method
