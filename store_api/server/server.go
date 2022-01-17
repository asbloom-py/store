package server

import (
	"net/http"

	store "github.com/asbloom-py/store_api/controller"
	"github.com/gin-gonic/gin"
)

func Init() {
	r := router()
   
	r.Run(":3000")
  }

  func router() *gin.Engine {
	r := gin.Default()
   
	// CORS対応
	r.Use(CORS())
	
	
	// ルーティング
	m:= r.Group("/merchant/:merchant_id")
	{
		
		m.GET("/index", func(c *gin.Context) {
			merchant_id := c.Param("merchant_id")
			message := "merchant_id" + " is " + merchant_id
			c.String(http.StatusOK, message)
		})
		s := m.Group("/store")
		{
		  s.GET("/:store_id", func(c *gin.Context) {store.GetStore(c)})
		}
	}
	
   
	return r
  }

  func CORS() gin.HandlerFunc {
	return func(c *gin.Context) {
	  c.Writer.Header().Set("Access-Control-Allow-Origin", "*")
	  c.Writer.Header().Set("Access-Control-Allow-Credentials", "true")
	  c.Writer.Header().Set("Access-Control-Allow-Headers", "Content-Type, Content-Length, Accept-Encoding, X-CSRF-Token, Authorization, accept, origin, Cache-Control, X-Requested-With")
	  c.Writer.Header().Set("Access-Control-Allow-Methods", "GET, POST, OPTIONS, PUT, PATCH, DELETE")
   
	  if c.Request.Method == "OPTIONS" {
		c.AbortWithStatus(http.StatusNoContent)
		return
	  }
   
	  c.Next()
	}
  }