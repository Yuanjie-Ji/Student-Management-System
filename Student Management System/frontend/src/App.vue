<template>
  <div id="app">
   <div class="col-8 offset-2">
      <table class="table caption-top table-hover">
  <caption class="text-center">
    <h1>Student Management System</h1>
    <el-button type="primary" @click="getStudents">Get Student Info</el-button>
    <el-button type="warning" @click="dialogVisible = true">Add Student</el-button>

<el-dialog
  title="Tips"
  :visible.sync="dialogVisible"
  width="30%"
  :before-close="handleClose">
  <div>Add Student Info</div>
  <span slot="footer" class="dialog-footer">
    <el-button @click="dialogVisible = false">Cancel</el-button>
    <el-button type="primary" @click="addStudent">Add</el-button>
  </span>
  <div>

    <span>Number</span><input v-model="newStudent.number"/>
  </div>
  <div>
    <span>Name</span><input v-model="newStudent.name"/>

  </div>
  <div>
    <span>Age</span><input v-model.number="newStudent.age"/>

  </div>
  <div>
    <span>Chinese</span><input v-model.number="newStudent.chi"/>

  </div>
  <div>
    <span>Math</span><input v-model.number="newStudent.math"/>

  </div>
  <div>

    <span>English</span><input v-model.number="newStudent.eng"/>
  </div>
</el-dialog>
  </caption>
  <thead>
    <tr>
      <th scope="col">Number</th>
      <th scope="col">Name</th>
      <th scope="col">Age</th>
      <th scope="col">Chinese</th>
      <th scope="col">Math</th>
      <th scope="col">English</th>
      <th scope="col">Change</th>
      <th></th>
    </tr>
  </thead>
  <tbody>
    <Student v-for="stu in students" :key="stu.id" :student="stu"></Student>
  </tbody>
</table>
   </div>
  </div>
</template>

<script>
import axios from 'axios'
import Student from './components/Student'
export default {
  name: 'App',
  components: {
    Student
  },
  data() {
    return {
      students:[],
      dialogVisible: false,
      newStudent:{
        number:"",
        name:"",
        age:"",
        chi:"",
        math:"",
        eng:"",
      }
    }
  },
  methods:{
    getStudents(){
      axios({
        url: "http://localhost:8080/students",
        method: 'GET',
      }).then(res=>{
        console.log(res.data);
        this.students=res.data;
      })
    },
     handleClose(done) {
        this.$confirm('Confirm to Close？')
          .then(() => {
            done();
          })
          .catch(()=> {});
      },
      addStudent(){
        axios({
          url: 'http://localhost:8080/add',
          method: 'POST',
          data:this.newStudent
        })
        this.dialogVisible = false
      }
    
  }
}
</script>

<style>


</style>
