<%@ Page Title="" Language="VB" MasterPageFile="~/Site.master" AutoEventWireup="false" CodeFile="RegisterPatient.aspx.vb" Inherits="RegisterPatient" %>

<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" Runat="Server">
     <div class="text-center">


         <br />
         <asp:Label ID="Label1" runat="server" style="color: #FFFFFF; font-weight: 700; font-size: xx-large" Text="Register New Account"></asp:Label>
         <br />
         <br />
         <span style="color: #FFFFFF"><strong>UserName<br />
         </strong>
         <asp:TextBox ID="TextBox1" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         <br />
         <strong>Password<br />
         <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         </strong></span>
         <br />
         <span style="color: #FFFFFF"><strong>First Name</strong></span><br />
         <span style="color: #336699">
         <asp:TextBox ID="TextBox3" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         <br />
         <span style="color: #FFFFFF"><strong>Last Name</strong></span><br />
         <asp:TextBox ID="TextBox4" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         <br />
         <span style="color: #FFFFFF"><strong>Email</strong></span><br />
         <asp:TextBox ID="TextBox6" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         <br />
         <br />
         <span style="color: #FFFFFF"><strong>Age</strong></span><br />
         <asp:DropDownList ID="DropDownList1" runat="server" Width="180px" CssClass="form-control-static">
             <asp:ListItem>18</asp:ListItem>
             <asp:ListItem>19</asp:ListItem>
             <asp:ListItem>20</asp:ListItem>
             <asp:ListItem>21</asp:ListItem>
             <asp:ListItem>22</asp:ListItem>
             <asp:ListItem>23</asp:ListItem>
             <asp:ListItem>24</asp:ListItem>
             <asp:ListItem>25</asp:ListItem>
             <asp:ListItem>26</asp:ListItem>
             <asp:ListItem>27</asp:ListItem>
             <asp:ListItem>28</asp:ListItem>
             <asp:ListItem>29</asp:ListItem>
             <asp:ListItem>30</asp:ListItem>
             <asp:ListItem>31</asp:ListItem>
             <asp:ListItem>32</asp:ListItem>
             <asp:ListItem>33</asp:ListItem>
             <asp:ListItem>34</asp:ListItem>
             <asp:ListItem>35</asp:ListItem>
             <asp:ListItem>36</asp:ListItem>
             <asp:ListItem>37</asp:ListItem>
             <asp:ListItem>38</asp:ListItem>
             <asp:ListItem>39</asp:ListItem>
             <asp:ListItem>40</asp:ListItem>
             <asp:ListItem>41</asp:ListItem>
             <asp:ListItem>42</asp:ListItem>
             <asp:ListItem>43</asp:ListItem>
             <asp:ListItem>44</asp:ListItem>
             <asp:ListItem>45</asp:ListItem>
             <asp:ListItem>46</asp:ListItem>
             <asp:ListItem>47</asp:ListItem>
             <asp:ListItem>48</asp:ListItem>
             <asp:ListItem>49</asp:ListItem>
             <asp:ListItem>50</asp:ListItem>
             <asp:ListItem>51</asp:ListItem>
             <asp:ListItem>52</asp:ListItem>
             <asp:ListItem>53</asp:ListItem>
             <asp:ListItem>54</asp:ListItem>
             <asp:ListItem>55</asp:ListItem>
             <asp:ListItem>56</asp:ListItem>
             <asp:ListItem>57</asp:ListItem>
             <asp:ListItem>58</asp:ListItem>
             <asp:ListItem>59</asp:ListItem>
             <asp:ListItem>60</asp:ListItem>
             <asp:ListItem>61</asp:ListItem>
             <asp:ListItem>62</asp:ListItem>
             <asp:ListItem>63</asp:ListItem>
             <asp:ListItem>64</asp:ListItem>
             <asp:ListItem>65</asp:ListItem>
             <asp:ListItem>66</asp:ListItem>
             <asp:ListItem>67</asp:ListItem>
             <asp:ListItem>68</asp:ListItem>
             <asp:ListItem>69</asp:ListItem>
             <asp:ListItem>70</asp:ListItem>
             <asp:ListItem>71</asp:ListItem>
             <asp:ListItem>72</asp:ListItem>
             <asp:ListItem>73</asp:ListItem>
             <asp:ListItem>74</asp:ListItem>
             <asp:ListItem>75</asp:ListItem>
             <asp:ListItem>76</asp:ListItem>
             <asp:ListItem>77</asp:ListItem>
             <asp:ListItem>78</asp:ListItem>
             <asp:ListItem>79</asp:ListItem>
             <asp:ListItem>80</asp:ListItem>
             <asp:ListItem>81</asp:ListItem>
             <asp:ListItem>82</asp:ListItem>
             <asp:ListItem>83</asp:ListItem>
             <asp:ListItem>84</asp:ListItem>
             <asp:ListItem>85</asp:ListItem>
             <asp:ListItem>86</asp:ListItem>
             <asp:ListItem>87</asp:ListItem>
             <asp:ListItem>88</asp:ListItem>
         </asp:DropDownList>
         <br />
         <br />
         <span style="color: #FFFFFF"><strong>Contact Number</strong><br />
         <asp:TextBox ID="TextBox5" runat="server" Width="180px" BackColor="White" BorderColor="#003366" BorderStyle="Solid" CssClass="form-control-static"></asp:TextBox>
         </span>
         <br />
         <br />
        <strong>
        <asp:Label ID="Label2" runat="server" ForeColor="#FF3300" Text="ERROR" Visible="False"></asp:Label>
        </strong>



         <br />
        <strong>
        <asp:Button ID="Button1" runat="server" Font-Bold="True" Text="Submit" Width="180px" CssClass="button"  />
        </strong>



         <br />
         <br />


     </div>
</asp:Content>

