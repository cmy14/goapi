package main

import (
	"log"

	"net/http"

	"github.com/gin-gonic/gin"
)

func main() {
	log.Println("Starting server...")
	r := gin.Default()
	public := r.Group("/api")
	public.POST("/register", func(c *gin.Context) {
		c.JSON(http.StatusOK, gin.H{"data": "this is the register endpoint !"})
	})
	r.Run(":8080")

}
